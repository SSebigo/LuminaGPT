import 'package:lumina_gpt/domain/sessions/goal.dart';
import 'package:lumina_gpt/domain/sessions/name.dart';
import 'package:lumina_gpt/domain/sessions/role.dart';
import 'package:lumina_gpt/domain/sessions/session.dart';
import 'package:lumina_gpt/domain/sessions/sessions_failure.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
abstract class ISessionsRepository {
  /// @nodoc
  Future<Result<Unit, SessionsFailure>> deleteSession();

  /// @nodoc
  Future<Result<Session, SessionsFailure>> fetchSession();

  /// @nodoc
  Future<Result<List<Session>, SessionsFailure>> fetchSessions();

  /// @nodoc
  Future<Result<Unit, SessionsFailure>> insertSession(Session session);

  /// @nodoc
  Future<Result<Unit, SessionsFailure>> startGoal(
    Name name,
    Role role,
    Goal goal,
  );
}
