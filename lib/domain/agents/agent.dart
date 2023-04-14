import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/model.dart';
import 'package:lumina_gpt/domain/agents/name.dart';

part 'agent.freezed.dart';

/// @nodoc
@freezed
class Agent with _$Agent {
  /// @nodoc
  factory Agent({
    required Name name,
    required Model model,
  }) = _Agent;

  /// @nodoc
  factory Agent.empty() => Agent(
        name: Name(''),
        model: Model.empty(),
      );

  /// @nodoc
  factory Agent.base() => Agent(
        name: Name('LuminaGPT'),
        model: Model.base(),
      );
}
