import 'dart:convert';

import 'package:dart_openai/openai.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/agents_failure.dart';
import 'package:lumina_gpt/domain/agents/i_agents_repository.dart';
import 'package:lumina_gpt/domain/agents/model.dart';
import 'package:lumina_gpt/domain/agents/task.dart';
import 'package:lumina_gpt/domain/agents/temperature.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/agents/agent_dto.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_agent.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_model.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_task.dart';
import 'package:lumina_gpt/infrastructure/agents/model_dto.dart';
import 'package:lumina_gpt/infrastructure/agents/task_dto.dart';
import 'package:lumina_gpt/utils/constants/models.dart';
import 'package:lumina_gpt/utils/constants/task.dart';
import 'package:lumina_gpt/utils/constants/temperatures.dart';
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
        await agent.tasks.load();
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

      final isarAgent = AgentDTO.fromDomain(agent).toAdapter();
      final isarTasks = agent.tasks
          .map((e) => TaskDTO.fromDomain(e).toAdapter())
          .toList(growable: false);
      final isarModel = ModelDTO.fromDomain(agent.model).toAdapter();

      await _isar.writeTxn(() async {
        await _isar.agents.put(isarAgent);
        await _isar.tasks.putAll(isarTasks);
        await _isar.models.put(isarModel);

        isarAgent.tasks
          ..clear()
          ..addAll(isarTasks);
        isarAgent.model.value = isarModel;

        await isarAgent.tasks.save();
        await isarAgent.model.save();
      });

      await isarAgent.tasks.load();
      await isarAgent.model.load();

      tmpAgent = AgentDTO.fromAdapter(isarAgent).toDomain();

      return Ok(tmpAgent);
    } catch (e) {
      return const Err(AgentsFailure.unexpected());
    }
  }

  @override
  Future<Result<Agent, AgentsFailure>> startGoal(
    Label name,
    Label goal,
  ) async {
    try {
      final prompt =
          'You are an autonomous task creation AI for worldbuilding called Lumina Brain. Given the following goal: "${goal.getOrCrash()}", you have to create zero to three realistic tasks for an AI that will help you achieve the goal. Return a list of tasks in JSON format such that it contains a name for the task, a description for the task, a role for the task and a goal for the task like this ```{"name": "","description": "","role": "","goal": ""}```.';

      debugPrint('prompt: $prompt');

      final completion = await OpenAI.instance.chat.create(
        model: gpt35Turbo,
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: prompt,
            role: OpenAIChatMessageRole.user,
          ),
        ],
        temperature: defaultTemperature,
        maxTokens: 300,
      );

      final content = completion.choices.single.message.content;

      debugPrint('startGoal() - content: $content');

      final jsonContent = jsonDecode(content) as List<dynamic>;

      debugPrint('startGoal() - jsonContent: $jsonContent');

      final tasks = <Task>[];
      for (final task in jsonContent) {
        final taskName = (task as Map<String, dynamic>)['name'] as String;
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

      final agent = Agent(
        name: name,
        tasks: tasks,
        model: Model(
          name: Label(gpt35Turbo),
          temperature: Temperature(defaultTemperature),
        ),
      );

      debugPrint('startGoal() - agent: $agent');

      return Ok(agent);
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
        final childrenTasks = sortedTasks.where(
          (element) => element.parentId == task.id,
        );

        final result = StringBuffer();

        for (final childTask in childrenTasks) {
          result.write(childTask.result?.getOrCrash() ?? '');
        }

        var prompt = '';

        if (result.isEmpty) {
          prompt =
              'You are an autonomous task executioon AI for worldbuilding called Lumina Task Solver. Given the following overall goal: "${goal.getOrCrash()}", you have been given the task: ${task.name.getOrCrash().toLowerCase()}. Your role is that of a ${task.role.getOrCrash().toLowerCase()}. You will ${task.description.getOrCrash().toLowerCase()}. Your goal is to ${task.goal.getOrCrash().toLowerCase()}, you have to complete this goal by any means necessary and available to you. Return a string.';
        } else {
          prompt =
              'You are an autonomous task executioon AI for worldbuilding called Lumina Task Solver. Given the following overall goal: "${goal.getOrCrash()}" and the following data: "${result}", you have been given the task: ${task.name.getOrCrash().toLowerCase()}. Your role is that of a ${task.role.getOrCrash().toLowerCase()}. You will ${task.description.getOrCrash().toLowerCase()}. Your goal is to ${task.goal.getOrCrash().toLowerCase()}, you have to complete this goal by any means necessary and available to you. Return a string.';
        }

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
      if (agent.tasks.length >= maxTasks) {
        yield const Err(AgentsFailure.maxTasksReached());
      } else {
        for (final task in tasks) {
          final newTasks = <Task>[];

          final prompt =
              'You are an autonomous task creation AI for worldbuilding called Lumina Task Maker. Given the following overall goal: "${goal.getOrCrash()}", you have been given the following task: "${task.name.getOrCrash().toLowerCase()}". Your role is that of a ${task.role.getOrCrash().toLowerCase()}. You will ${task.description.getOrCrash().toLowerCase()}. Your goal is to ${task.goal.getOrCrash().toLowerCase()}, you have to create ONLY IF NEEDED, zero to three realistic tasks for an AI that will help you achieve the goal. Return a list of tasks in JSON format such that it contains a name for the task, a description for the task, a role for the task and a goal for the task like this ```{"name": "","description": "","role": "","goal": ""}```. Return an empty list if you don\'t need to create any new tasks.';

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

          debugPrint('createTasks() - content: $content');

          final jsonContent = jsonDecode(content) as List<dynamic>;

          debugPrint('createTasks() - jsonContent: $jsonContent');

          for (final jsonTask in jsonContent) {
            final taskName =
                (jsonTask as Map<String, dynamic>)['name'] as String;
            final taskDescription = jsonTask['description'] as String;
            final taskRole = jsonTask['role'] as String;
            final taskGoal = jsonTask['goal'] as String;

            newTasks.add(
              Task(
                name: Label(taskName),
                description: Label(taskDescription),
                role: Label(taskRole),
                goal: Label(taskGoal),
                createdAt: DateTime.now(),
                done: false,
                parentId: task.id,
              ),
            );
          }

          if (newTasks.isEmpty) {
            yield const Err(AgentsFailure.noNewTasks());
          } else {
            yield Ok(newTasks);
          }
        }
      }
    } catch (e) {
      yield const Err(AgentsFailure.unexpected());
    }
  }
}
