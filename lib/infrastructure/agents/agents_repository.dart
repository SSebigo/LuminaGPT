import 'dart:convert';

import 'package:dart_openai/openai.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/agents_failure.dart';
import 'package:lumina_gpt/domain/agents/i_agents_repository.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/agents/agent_dto.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_agent.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_model.dart';
import 'package:lumina_gpt/infrastructure/agents/model_dto.dart';
import 'package:lumina_gpt/infrastructure/clusters/cluster_dto.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_cluster.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_task.dart';
import 'package:lumina_gpt/infrastructure/clusters/task_dto.dart';
import 'package:ml_linalg/linalg.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
@LazySingleton(
  as: IAgentsRepository,
  env: [Environment.dev, Environment.prod],
)
class AgentsRepository implements IAgentsRepository {
  /// @nodoc
  AgentsRepository(this._isar);

  final Isar _isar;

  @override
  Future<Result<Unit, AgentsFailure>> deleteAgent() {
    // TODO: implement deleteAgent
    throw UnimplementedError();
  }

  @override
  Future<Result<Agent, AgentsFailure>> fetchAgent() {
    // TODO: implement fetchAgent
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Agent>, AgentsFailure>> fetchAgents() async {
    try {
      final agents = await _isar.agents.where().findAll();

      for (final agent in agents) {
        await agent.clusters.load();
        await agent.completionModel.load();
        await agent.embeddingModel.load();
      }

      return Ok(
        agents.map((e) => AgentDTO.fromAdapter(e).toDomain()).toList(),
      );
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Agent, AgentsFailure>> insertAgent(Agent agent) async {
    try {
      var tmpAgent = agent;

      final isarAgent = AgentDTO.fromDomain(agent).toAdapter()
        ..clusters.clear();
      final isarCompletionModel =
          ModelDTO.fromDomain(agent.completionModel).toAdapter();
      final isarEmbeddingModel =
          ModelDTO.fromDomain(agent.embeddingModel).toAdapter();

      await _isar.writeTxn(() async {
        await _isar.agents.put(isarAgent);

        for (final cluster in agent.clusters) {
          final isarCluster = ClusterDTO.fromDomain(cluster).toAdapter();

          await _isar.clusters.put(isarCluster);

          final isarTasks = cluster.tasks
              .map((e) => TaskDTO.fromDomain(e).toAdapter())
              .toList();

          await _isar.tasks.putAll(isarTasks);

          isarCluster.tasks
            ..clear()
            ..addAll(isarTasks);

          await isarCluster.tasks.save();

          isarAgent.clusters.add(isarCluster);

          await isarAgent.clusters.save();
        }

        await _isar.models.put(isarCompletionModel);
        await _isar.models.put(isarEmbeddingModel);

        isarAgent.completionModel.value = isarCompletionModel;
        isarAgent.embeddingModel.value = isarEmbeddingModel;

        await isarAgent.completionModel.save();
        await isarAgent.embeddingModel.save();
      });

      await isarAgent.clusters.load();
      for (final cluster in isarAgent.clusters) {
        await cluster.tasks.load();
      }
      await isarAgent.completionModel.load();
      await isarAgent.embeddingModel.load();

      tmpAgent = AgentDTO.fromAdapter(isarAgent).toDomain();

      return Ok(tmpAgent);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Task>, AgentsFailure>> startGoal(
    Agent agent,
    Cluster cluster,
  ) async {
    try {
      const systemPrompt =
          'You are an autonomous task creation AI for worldbuilding called Lumina Brain.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have to create tasks that will help you reach or more closely reach the goal. Return the response as an array of strings without any explanation or additional text. The response should be usable in JSON.parse().';

      final completion = await OpenAI.instance.chat.create(
        model: agent.completionModel.name.getOrCrash(),
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: systemPrompt,
            role: OpenAIChatMessageRole.system,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: userPrompt,
            role: OpenAIChatMessageRole.user,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: 'Knowledge:\n\ncluster.knowledge?.getOrCrash()',
            role: OpenAIChatMessageRole.assistant,
          ),
        ],
        temperature: agent.completionModel.temperature?.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      final extractedTasks = _extractTasks(content);

      final tasks = <Task>[];
      for (final task in extractedTasks) {
        final description = task as String;

        tasks.add(
          Task(
            description: Label(description),
            createdAt: DateTime.now(),
            done: false,
          ),
        );
      }

      return Ok(tasks);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Cluster, AgentsFailure>> embedKnowledge(
    Agent agent,
    Cluster cluster,
  ) async {
    try {
      final embedding = await OpenAI.instance.embedding.create(
        model: agent.embeddingModel.name.getOrCrash(),
        input: cluster.knowledge?.getOrCrash(),
      );

      final embeddings = embedding.data.first.embeddings;

      return Ok(cluster.copyWith(knowledgeEmbeddings: embeddings));
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Task>, AgentsFailure>> prioritizeTasks(
    Agent agent,
    Cluster cluster,
    List<Task> tasks, {
    int attempts = 5,
  }) async {
    try {
      final tasksFormatted = tasks
          .map(
            (task) => {
              '${task.id}': task.description.getOrCrash(),
            },
          )
          .toList();
      final tasksJson = jsonEncode(tasksFormatted);

      const systemPrompt =
          'You are an autonomous task priorization AI for worldbuilding called Lumina Task Manager.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have to prioritize tasks to help you reach or more closely reach the goal. Return the response as an array of IDs (Integer) without any explanation or additional text. The response should be usable in JSON.parse().';
      final assistantPrompt =
          'Tasks:\n\n$tasksJson\n\n\nKnowlegde:\n\n${cluster.knowledge?.getOrCrash()}';

      final completion = await OpenAI.instance.chat.create(
        model: agent.completionModel.name.getOrCrash(),
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: systemPrompt,
            role: OpenAIChatMessageRole.system,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: userPrompt,
            role: OpenAIChatMessageRole.user,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: assistantPrompt,
            role: OpenAIChatMessageRole.assistant,
          ),
        ],
        temperature: agent.completionModel.temperature?.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      final priorities = _extractPriorities(content);

      if (priorities.isEmpty || priorities.length < tasks.length) {
        if (attempts > 0) {
          return prioritizeTasks(
            agent,
            cluster,
            tasks,
            attempts: attempts - 1,
          );
        } else {
          return const Err(AgentsFailure.unexpected());
        }
      }

      final newTasksList = <Task>[];
      for (final task in tasks) {
        final index =
            priorities.indexWhere((e) => e.toString() == '${task.id}');

        newTasksList.add(
          tasks[index].copyWith(
            priority: index,
            updatedAt: DateTime.now(),
          ),
        );
      }

      return Ok(newTasksList);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Task, AgentsFailure>> embedTaskDescription(
    Agent agent,
    Task task,
  ) async {
    try {
      final embedding = await OpenAI.instance.embedding.create(
        model: agent.embeddingModel.name.getOrCrash(),
        input: task.description.getOrCrash(),
      );

      final embeddings = embedding.data.first.embeddings;

      return Ok(task.copyWith(descriptionEmbeddings: embeddings));
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Task, AgentsFailure>> executeTask(
    Agent agent,
    Cluster cluster,
    Task task,
  ) async {
    try {
      // get knowledge using embeddings
      final knowledgeBase = <Map<String, dynamic>>[
        {
          'id': cluster.id,
          'type': 'cluster',
          'embeddings': cluster.knowledgeEmbeddings,
          'proximity': 0,
        }
      ];

      for (final task in cluster.tasks) {
        if (task.resultEmbeddings != null &&
            task.resultEmbeddings!.isNotEmpty) {
          knowledgeBase.add({
            'id': task.id,
            'type': 'task',
            'embeddings': task.resultEmbeddings,
            'proximity': 0,
          });
        }
      }

      for (final knowledge in knowledgeBase) {
        final taskVector = Vector.fromList(task.descriptionEmbeddings!);
        final knowledgeVector =
            Vector.fromList(knowledge['embeddings'] as List<double>);

        final proximity = knowledgeVector.distanceTo(taskVector);

        knowledge['proximity'] = proximity;
      }

      knowledgeBase.sort(
        (a, b) =>
            (a['proximity'] as double).compareTo(b['proximity'] as double),
      );

      final knowledge = knowledgeBase.last;

      const systemPrompt =
          'You are an autonomous task execution AI for worldbuilding called Lumina Task Executor.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have been given the task: "${task.description.getOrCrash()}". Execute the task. Return the response as a string.';
      final assistantPrompt = 'Knowledge:\n\n$knowledge';

      final completion = await OpenAI.instance.chat.create(
        model: agent.completionModel.name.getOrCrash(),
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: systemPrompt,
            role: OpenAIChatMessageRole.system,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: userPrompt,
            role: OpenAIChatMessageRole.user,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: assistantPrompt,
            role: OpenAIChatMessageRole.assistant,
          ),
        ],
        temperature: agent.completionModel.temperature?.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      final trimmedContent = _trimIncompleteSentence(content);

      return Ok(
        task.copyWith(
          result: Label(trimmedContent),
          done: true,
          updatedAt: DateTime.now(),
        ),
      );
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Task, AgentsFailure>> embedTaskResult(
    Agent agent,
    Task task,
  ) async {
    try {
      if (task.result == null) {
        return const Err(AgentsFailure.unexpected());
      }

      final embedding = await OpenAI.instance.embedding.create(
        model: agent.embeddingModel.name.getOrCrash(),
        input: task.result?.getOrCrash(),
      );

      final embeddings = embedding.data.first.embeddings;

      return Ok(task.copyWith(resultEmbeddings: embeddings));
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Option<Task>, AgentsFailure>> createTasks(
    Agent agent,
    Cluster cluster,
    List<Task> tasks, {
    int attempts = 3,
  }) async {
    try {
      final tasksFormatted =
          tasks.map((task) => task.description.getOrCrash()).toList();
      final tasksJson = jsonEncode(tasksFormatted);

      const systemPrompt =
          'You are an autonomous task executioon AI for worldbuilding called Lumina Task Maker.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have to create a task that will help you reach or more closely reach the goal.\n\nReturn the response as a SINGLE SENTENCE without any explanation or additional text. The response should be usable in JSON.parse().';
      final assistantPrompt =
          'Current tasks:\n\n$tasksJson\n\n\nKnowledge:\n\n${cluster.knowledge?.getOrCrash()}';

      final completion = await OpenAI.instance.chat.create(
        model: agent.completionModel.name.getOrCrash(),
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: systemPrompt,
            role: OpenAIChatMessageRole.system,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: userPrompt,
            role: OpenAIChatMessageRole.user,
          ),
          OpenAIChatCompletionChoiceMessageModel(
            content: assistantPrompt,
            role: OpenAIChatMessageRole.assistant,
          ),
        ],
        temperature: agent.completionModel.temperature?.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      final extractedTask = _extractTask(content);

      final trimmedTask = _trimIncompleteSentence(extractedTask);

      if ((content.isNotEmpty && extractedTask.isEmpty) ||
          (extractedTask.isNotEmpty && trimmedTask.isEmpty)) {
        if (attempts > 0) {
          return createTasks(
            agent,
            cluster,
            tasks,
            attempts: attempts - 1,
          );
        }
        return const Ok(None());
      }

      return Ok(
        Some(
          Task(
            description: Label(trimmedTask),
            createdAt: DateTime.now(),
            done: false,
          ),
        ),
      );
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  List<dynamic> _extractTasks(String input) {
    var tmpInput = input.trim();

    final isBracketed = tmpInput.startsWith('[') && tmpInput.endsWith(']');

    if (isBracketed) {
      tmpInput = tmpInput.substring(1, tmpInput.length - 1);
    }

    // Match single or double quoted strings, or unquoted strings
    final regex = RegExp(
      r'''(["'])(.*?)(?<!\\)\1|([^,"'\[\]\s]+(?:\s+[^,"'\[\]\s]+)*)''',
    );
    final matches = regex.allMatches(tmpInput);

    final tasks = matches
        .map((match) {
          String? str;
          if (match.group(2) != null) {
            str = match.group(2);
          } else {
            str = match.group(3);
          }
          if (str != null) {
            str = str.trim();
          }
          return str;
        })
        .whereType<String>()
        .toList();

    return tasks;
  }

  List<int> _extractPriorities(String input) {
    final pattern1 =
        RegExp(r'\[\s*((?:"\d+"|\d+)(?:\s*,\s*(?:"\d+"|\d+))*)\s*\]');
    final pattern2 = RegExp(
      r'\[\s*({(?:\s*"id"\s*:\s*"\d+"\s*,?\s*)+}\s*(?:,\s*{(?:\s*"id"\s*:\s*"\d+"\s*,?\s*)+}\s*)*)\s*\]',
    );

    final match1 = pattern1.firstMatch(input);
    final match2 = pattern2.firstMatch(input);

    if (match1 != null) {
      final listContent = match1.group(1)!;
      final stringItems = listContent.split(RegExp(r'\s*,\s*'));
      final priorities = stringItems
          .map((item) => int.parse(item.replaceAll('"', '')))
          .toList();

      return priorities;
    } else if (match2 != null) {
      final listContent = match2.group(0)!;
      final jsonList = jsonDecode(listContent) as List<dynamic>;
      final priorities =
          jsonList.map((item) => int.parse(item['id'] as String)).toList();

      return priorities;
    } else {
      return [];
    }
  }

  String _extractTask(String input) {
    final pattern1 =
        RegExp(r'\{\s*"([^"\\]|\\.)*"\s*:\s*"((?:[^"\\]|\\.)*)"\s*\}');
    final pattern2 = RegExp(r'^\s*\[?"((?:[^"\\]|\\.)+)"?\]?\s*$');
    final pattern3 = RegExp(r"^'([^']+)'$");
    final pattern4 = RegExp(r'^(\S.*\S)$');

    final match1 = pattern1.firstMatch(input);
    final match2 = pattern2.firstMatch(input);
    final match3 = pattern3.firstMatch(input);
    final match4 = pattern4.firstMatch(input);

    if (match1 != null) {
      return match1.group(2)!;
    } else if (match2 != null) {
      return match2.group(1)!;
    } else if (match3 != null) {
      return match3.group(1)!;
    } else if (match4 != null) {
      return match4.group(1)!;
    } else {
      return '';
    }
  }

  String _trimIncompleteSentence(String input) {
    final lastPeriodIndex = input.lastIndexOf('.');
    if (lastPeriodIndex == -1) {
      return '';
    }
    return input.substring(0, lastPeriodIndex + 1).trimRight();
  }
}
