import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/name.dart';

part 'agent.freezed.dart';

/// @nodoc
@freezed
class Agent with _$Agent {
  /// @nodoc
  factory Agent({
    required Name name,
  }) = _Agent;

  /// @nodoc
  factory Agent.empty() => Agent(
        name: Name(''),
      );
}
