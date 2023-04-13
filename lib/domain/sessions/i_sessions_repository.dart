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
  Future<Result<Unit, SessionsFailure>> insertSession(Session session);
}
