import 'dart:convert';

import 'package:dart_openai/openai.dart';
import 'package:flutter/material.dart';
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
        await agent.model.load();
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
      final isarModel = ModelDTO.fromDomain(agent.model).toAdapter();

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

        await _isar.models.put(isarModel);

        isarAgent.model.value = isarModel;

        await isarAgent.model.save();
      });

      await isarAgent.clusters.load();
      for (final cluster in isarAgent.clusters) {
        await cluster.tasks.load();
      }
      await isarAgent.model.load();

      tmpAgent = AgentDTO.fromAdapter(isarAgent).toDomain();

      return Ok(tmpAgent);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Task>, AgentsFailure>> startGoal(
    Agent agent,
    Label goal,
    Label knowledge,
  ) async {
    try {
      const systemPrompt =
          'You are an autonomous task creation AI for worldbuilding called Lumina Brain.';
      final userPrompt =
          'Given the following goal: "${goal.getOrCrash()}", you have to create tasks that will help you achieve the goal. Return a list of tasks in formatted like this ```{"name": "","description": "","goal": ""}``` such that it can be used by JSON.parse().';

      debugPrint('startGoal() - systemPrompt: $systemPrompt');
      debugPrint('startGoal() - userPrompt: $userPrompt');
      debugPrint('startGoal() - knowledge: ${knowledge.getOrCrash()}');

      final completion = await OpenAI.instance.chat.create(
        model: agent.model.name.getOrCrash(),
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
            content: knowledge.getOrCrash(),
            role: OpenAIChatMessageRole.assistant,
          ),
        ],
        temperature: agent.model.temperature.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      debugPrint('startGoal() - content: $content');

      final jsonContent = _extractJsonParts(content);

      debugPrint('startGoal() - jsonContent: $jsonContent');

      final tasks = <Task>[];
      for (final task in jsonContent) {
        final taskName = task['name'] as String;
        final taskDescription = task['description'] as String;
        final taskGoal = task['goal'] as String;

        tasks.add(
          Task(
            name: Label(taskName),
            description: Label(taskDescription),
            goal: Label(taskGoal),
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
  Future<Result<List<Task>, AgentsFailure>> prioritizeTasks(
    Agent agent,
    Cluster cluster,
    List<Task> tasks,
  ) async {
    try {
      final tasksFormatted = tasks
          .map(
            (task) => {
              'id': '${task.id}',
              'name': task.name.getOrCrash(),
            },
          )
          .toList();
      final tasksJson = jsonEncode(tasksFormatted);

      const systemPrompt =
          'You are an autonomous task priorization AI for worldbuilding called Lumina Task Manager.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have to sort tasks by their importance to help you achieve the goal.\n\nTasks:\n\n$tasksJson. Return a list of ALL IDs sorted by their task priority WITHOUT ANY EXPLANATION formatted like this ```{"priorities": []}``` such that it can be used by JSON.parse().';
      final assistantPrompt = '${cluster.knowledge?.getOrCrash()}';

      debugPrint('prioritizeTasks() - systemPrompt: $systemPrompt');
      debugPrint('prioritizeTasks() - userPrompt: $userPrompt');
      debugPrint('prioritizeTasks() - assistantPrompt: $assistantPrompt');

      final completion = await OpenAI.instance.chat.create(
        model: agent.model.name.getOrCrash(),
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
        temperature: agent.model.temperature.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      debugPrint('prioritizeTasks() - content: $content');

      final jsonContent = _extractJsonParts(content);

      debugPrint('prioritizeTasks() - jsonContent: $jsonContent');

      final priorities = jsonContent.first['priorities'] as List<dynamic>;

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
  Future<Result<Task, AgentsFailure>> executeTask(
    Agent agent,
    Cluster cluster,
    Task task,
  ) async {
    try {
      final formattedTask = {
        'name': task.name.getOrCrash(),
        'description': task.description.getOrCrash(),
        'goal': task.goal.getOrCrash(),
      };
      final taskJson = jsonEncode(formattedTask);

      const systemPrompt =
          'You are an autonomous task execution AI for worldbuilding called Lumina Task Executor.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have been given the task: $taskJson.';
      final assistantPrompt = '${cluster.knowledge?.getOrCrash()}';

      debugPrint('executeTask() - userPrompt: $userPrompt');
      debugPrint('executeTask() - assistantPrompt: $assistantPrompt');

      final completion = await OpenAI.instance.chat.create(
        model: agent.model.name.getOrCrash(),
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
        temperature: agent.model.temperature.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      debugPrint('executeTask() - content: $content');

      // final jsonContent = _extractJsonParts(content);

      // debugPrint('executeTask() - jsonContent: $jsonContent');

      // final result = jsonContent.first['result'] as String;

      // debugPrint('executeTask() - result: $result');

      return Ok(
        task.copyWith(
          result: Label(content),
          done: true,
          updatedAt: DateTime.now(),
        ),
      );
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Option<Task>, AgentsFailure>> createTasks(
    Agent agent,
    Cluster cluster,
    List<Task> tasks,
  ) async {
    try {
      final tasksFormatted = tasks
          .map(
            (task) => {
              'name': task.name.getOrCrash(),
              'description': task.description.getOrCrash(),
              // 'role': task.role.getOrCrash(),
              // 'goal': task.goal.getOrCrash(),
            },
          )
          .toList();
      final tasksJson = jsonEncode(tasksFormatted);

      const systemPrompt =
          'You are an autonomous task executioon AI for worldbuilding called Lumina Task Maker.';
      final userPrompt =
          'Given the following goal: "${cluster.goal.getOrCrash()}", you have to create a task that will help you achieve the goal. Return an objet and ONLY ONE formatted like this ```{"name": "","description": "","goal": ""}``` such that it can be used by JSON.parse().\n\nCurrent tasks:\n\n$tasksJson.';
      final assistantPrompt = '${cluster.knowledge?.getOrCrash()}';

      debugPrint('createTasks() - systemPrompt: $systemPrompt');
      debugPrint('createTasks() - userPrompt: $userPrompt');
      debugPrint('createTasks() - assistantPrompt: $assistantPrompt');

      final completion = await OpenAI.instance.chat.create(
        model: agent.model.name.getOrCrash(),
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
        temperature: agent.model.temperature.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      debugPrint('createTasks() - content: $content');

      final jsonContent = _parseApiResponse(content);

      debugPrint('createTasks() - jsonContent: $jsonContent');

      if (jsonContent.isNotEmpty) {
        final taskName = jsonContent.first['name'] as String;
        final taskDescription = jsonContent.first['description'] as String;
        final taskGoal = jsonContent.first['goal'] as String;

        return Ok(
          Some(
            Task(
              name: Label(taskName),
              description: Label(taskDescription),
              goal: Label(taskGoal),
              createdAt: DateTime.now(),
              done: false,
            ),
          ),
        );
      }
      return const Ok(None());
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  List<Map<String, dynamic>> _extractJsonParts(String input) {
    final jsonRegExp = RegExp(r'\{(?:[^{}]|())*\}');
    final jsonList = <Map<String, dynamic>>[];

    for (final match in jsonRegExp.allMatches(input)) {
      final jsonString = match.group(0);
      if (jsonString != null) {
        try {
          jsonList.add(jsonDecode(jsonString) as Map<String, dynamic>);
        } catch (e) {
          // Ignore invalid JSON parts
        }
      }
    }

    return jsonList;
  }

  List<Map<String, dynamic>> _parseApiResponse(String response) {
    final trimResponse = response.trim();
    var jsonList = <Map<String, dynamic>>[];

    jsonList = _extractJsonParts(trimResponse);
    if (jsonList.isEmpty) {
      // Assume the response is in the custom list format
      final items = response.split(RegExp(r'\n(?=\d+\.)'));

      for (final item in items) {
        final lines = item.trim().split('\n');
        final currentItem = <String, dynamic>{};

        for (final line in lines) {
          final parts = line.split(':');
          if (parts.length > 1) {
            final key = parts[0].toLowerCase().trim();
            final cleanedKey = key.replaceAll(RegExp(r'^\d+\.\s*'), '');
            currentItem[cleanedKey] = parts.sublist(1).join(':').trim();
          }
        }

        jsonList.add(currentItem);
      }
    }

    return jsonList;
  }
}
