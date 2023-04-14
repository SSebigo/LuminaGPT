import 'package:dart_openai/openai.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart' hide Name;
import 'package:logger/logger.dart';
import 'package:lumina_gpt/domain/sessions/goal.dart';
import 'package:lumina_gpt/domain/sessions/i_sessions_repository.dart';
import 'package:lumina_gpt/domain/sessions/role.dart';
import 'package:lumina_gpt/domain/sessions/name.dart';
import 'package:lumina_gpt/domain/sessions/session.dart';
import 'package:lumina_gpt/domain/sessions/sessions_failure.dart';
import 'package:lumina_gpt/infrastructure/sessions/isar_session.dart';
import 'package:lumina_gpt/utils/constants/models.dart';
import 'package:lumina_gpt/utils/constants/temperatures.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
@LazySingleton(
  as: ISessionsRepository,
  env: [Environment.dev, Environment.prod],
)
class SessionsRepository implements ISessionsRepository {
  /// @nodoc
  SessionsRepository(this._isar);

  final Isar _isar;

  @override
  Future<Result<Unit, SessionsFailure>> deleteSession() {
    // TODO: implement deleteSession
    throw UnimplementedError();
  }

  @override
  Future<Result<Session, SessionsFailure>> fetchSession() {
    // TODO: implement fetchSession
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Session>, SessionsFailure>> fetchSessions() async {
    try {
      final sessions = await _isar.sessions.where().findAll();

      return Ok(sessions.map((e) => e.toDomain()).toList());
    } catch (e) {
      return const Err(SessionsFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, SessionsFailure>> insertSession(Session session) {
    // TODO: implement insertSession
    throw UnimplementedError();
  }

  @override
  Future<Result<Unit, SessionsFailure>> startGoal(
    Name name,
    Role role,
    Goal goal,
  ) async {
    try {
      final content =
          'You are an autonomous task creation AI called LuminaGPT. Given the following prompt: "${goal.getOrCrash()}", you have to create tasks that will help you achieve the goal stated in the prompt. You can use the following commands to help you: "create task", "create task with name", "create task with name and description", "create task with name, description and role", "create task with name, description, role and goal". Returns a list of tasks in JSON format such that it contains a name for the task, a description for the task, a role for the task and a goal for the task like this ```{"name": "","description": "","role": "","goal": ""}```.';

      debugPrint('content: $content');

      final completion = await OpenAI.instance.chat.create(
        model: gpt35Turbo,
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: content,
            role: OpenAIChatMessageRole.user,
          ),
        ],
        temperature: defaultTemperature,
        maxTokens: 300,
      );

      debugPrint('completion: ${completion.choices}');

      return const Ok(unit);
    } catch (e) {
      return const Err(SessionsFailure.unexpected());
    }
  }
}
