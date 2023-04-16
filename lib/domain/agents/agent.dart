import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/model.dart';
import 'package:lumina_gpt/domain/agents/task.dart';
import 'package:lumina_gpt/domain/core/label.dart';

part 'agent.freezed.dart';

/// @nodoc
@freezed
class Agent with _$Agent {
  /// @nodoc
  factory Agent({
    required Label name,
    required Model model,
    required List<Task> tasks,
    int? id,
  }) = _Agent;

  /// @nodoc
  factory Agent.empty() => Agent(
        name: Label(''),
        model: Model.empty(),
        tasks: [],
      );
}
