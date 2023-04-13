import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';

part 'session.freezed.dart';

/// @nodoc
@freezed
class Session with _$Session {
  /// @nodoc
  factory Session({
    required Agent agent,
  }) = _Session;

  /// @nodoc
  factory Session.empty() => Session(
        agent: Agent.empty(),
      );
}
