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
import 'package:lumina_gpt/infrastructure/clusters/cluster_dto.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_cluster.dart';
import 'package:lumina_gpt/infrastructure/agents/model_dto.dart';
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
  ) async {
    try {
      final prompt =
          'Instruction: You are an autonomous task creation AI for worldbuilding called Lumina Brain. Given the following goal: "${goal.getOrCrash()}", you have to create tasks that will help you achieve the goal. Return a list of tasks in JSON format such that it is formatted like this ```{"name": "","description": "","role": "","goal": ""}```.';

      debugPrint('startGoal() - prompt: $prompt');

      final completion = await OpenAI.instance.chat.create(
        model: agent.model.name.getOrCrash(),
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: prompt,
            role: OpenAIChatMessageRole.user,
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
        final taskRole = task['role'] as String;
        final taskGoal = task['goal'] as String;

        tasks.add(
          Task(
            name: Label(taskName),
            description: Label(taskDescription),
            role: Label(taskRole),
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
              'description': task.description.getOrCrash(),
              'role': task.role.getOrCrash(),
              'goal': task.goal.getOrCrash(),
            },
          )
          .toList();
      final tasksJson = jsonEncode(tasksFormatted);
      final prompt =
          'Instruction: You are an autonomous task priorization AI for worldbuilding called Lumina Task Manager. Given the following goal: "${cluster.goal.getOrCrash()}", you have to sort tasks by their importance to help you achieve the goal.\n\nTasks: $tasksJson. Return a list of ids.\n\n\nContext: ${cluster.knowledge?.getOrCrash()}';

      debugPrint('prioritizeTasks() - prompt: $prompt');

      final completion = await OpenAI.instance.chat.create(
        model: agent.model.name.getOrCrash(),
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: prompt,
            role: OpenAIChatMessageRole.user,
          ),
        ],
        temperature: agent.model.temperature.getOrCrash(),
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      debugPrint('prioritizeTasks() - content: $content');

      return Ok([]);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Stream<Result<Task, AgentsFailure>> executeTasks(
    Agent agent,
    List<Task> tasks,
    Label goal,
  ) async* {
    try {
      final sortedTasks = List<Task>.from(tasks)
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

      for (var task in sortedTasks) {
        // final childrenTasks = sortedTasks.where(
        //   (element) => element.parentId == task.id,
        // );

        // final result = StringBuffer();

        // for (final childTask in childrenTasks) {
        //   result.write(childTask.result?.getOrCrash() ?? '');
        // }

        final prompt =
            'You are an autonomous task executioon AI for worldbuilding called Lumina Task Solver. Given the following overall goal: "${goal.getOrCrash()}", you have been given the task: ${task.name.getOrCrash().toLowerCase()}. Your role is that of a ${task.role.getOrCrash().toLowerCase()}. You will ${task.description.getOrCrash().toLowerCase()}. Your goal is to ${task.goal.getOrCrash().toLowerCase()}, you have to complete this goal by any means necessary and available to you. Return a string.';

        final completion = await OpenAI.instance.chat.create(
          model: agent.model.name.getOrCrash(),
          messages: [
            OpenAIChatCompletionChoiceMessageModel(
              content: prompt,
              role: OpenAIChatMessageRole.user,
            ),
            // if (result.isNotEmpty)
            //   OpenAIChatCompletionChoiceMessageModel(
            //     content: 'This is your current knowledge of the topic: $result',
            //     role: OpenAIChatMessageRole.user,
            //   ),
          ],
          temperature: agent.model.temperature.getOrCrash(),
          maxTokens: 300,
        );

        final content = completion.choices.single.message.content;

        debugPrint('executeTasks() - content: $content');

        task = task.copyWith(
          result: Label(content),
          done: true,
        );

        // update the tasl in tasks
        final index =
            sortedTasks.indexWhere((element) => element.id == task.id);
        sortedTasks[index] = task;

        yield Ok(task);
      }
    } catch (e) {
      yield const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Stream<Result<List<Task>, AgentsFailure>> createTasks(
    Agent agent,
    List<Task> tasks,
    Label goal,
  ) async* {
    try {
      // if (agent.tasks.length >= maxTasks) {
      //   yield const Err(AgentsFailure.maxTasksReached());
      // } else {
      //   for (final task in tasks) {
      //     final newTasks = <Task>[];

      //     final prompt =
      //         'You are an autonomous task creation AI for worldbuilding called Lumina Task Maker. Given the following overall goal: "${goal.getOrCrash()}", you have been given the following task: "${task.name.getOrCrash().toLowerCase()}". Your role is that of a ${task.role.getOrCrash().toLowerCase()}. You will ${task.description.getOrCrash().toLowerCase()}. Your goal is to ${task.goal.getOrCrash().toLowerCase()}, you have to create ONLY IF NEEDED, zero to three realistic tasks for an AI that will help you achieve the goal. Return a list of tasks in JSON format such that it contains a name for the task, a description for the task, a role for the task and a goal for the task like this ```{"name": "","description": "","role": "","goal": ""}```. Return an empty list if you don\'t need to create any new tasks.';

      //     final completion = await OpenAI.instance.chat.create(
      //       model: agent.model.name.getOrCrash(),
      //       messages: [
      //         OpenAIChatCompletionChoiceMessageModel(
      //           content: prompt,
      //           role: OpenAIChatMessageRole.user,
      //         ),
      //       ],
      //       temperature: agent.model.temperature.getOrCrash(),
      //       maxTokens: 300,
      //     );

      //     final content = completion.choices.single.message.content;

      //     debugPrint('createTasks() - content: $content');

      //     final jsonContent = jsonDecode(content) as List<dynamic>;

      //     debugPrint('createTasks() - jsonContent: $jsonContent');

      //     for (final jsonTask in jsonContent) {
      //       final taskName =
      //           (jsonTask as Map<String, dynamic>)['name'] as String;
      //       final taskDescription = jsonTask['description'] as String;
      //       final taskRole = jsonTask['role'] as String;
      //       final taskGoal = jsonTask['goal'] as String;

      //       newTasks.add(
      //         Task(
      //           name: Label(taskName),
      //           description: Label(taskDescription),
      //           role: Label(taskRole),
      //           goal: Label(taskGoal),
      //           createdAt: DateTime.now(),
      //           done: false,
      //           parentId: task.id,
      //         ),
      //       );
      //     }

      //     if (newTasks.isEmpty) {
      //       yield const Err(AgentsFailure.noNewTasks());
      //     } else {
      //       yield Ok(newTasks);
      //     }
      //   }
      // }
    } catch (e) {
      yield const Err(AgentsFailure.unexpected());
    }
  }

  Future<Result<List<IsarCluster>, AgentsFailure>> _insertClusters(
    Agent agent,
  ) async {
    try {
      // extract clusters as a list of IsarCluster using ClusterDTO
      final isarClusters = agent.clusters
          .map((cluster) => ClusterDTO.fromDomain(cluster).toAdapter())
          .toList();

      await _isar.writeTxn(() async {
        await _isar.clusters.putAll(isarClusters);
      });

      return Ok(isarClusters);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  Future<Result<List<IsarTask>, AgentsFailure>> _insertTasks(
    Cluster cluster,
  ) async {
    try {
      // extract tasks from cluster as a list of IsarTask using TaskDTO
      final tasks = cluster.tasks
          .map((task) => TaskDTO.fromDomain(task).toAdapter())
          .toList();

      await _isar.writeTxn(() async {
        await _isar.tasks.putAll(tasks);
      });

      return Ok(tasks);
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
}
