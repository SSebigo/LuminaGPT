import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_agent.dart';
import 'package:lumina_gpt/infrastructure/agents/model_dto.dart';
import 'package:lumina_gpt/infrastructure/agents/task_dto.dart';

part 'agent_dto.freezed.dart';
part 'agent_dto.g.dart';

/// @nodoc
@freezed
class AgentDTO with _$AgentDTO {
  /// @nodoc
  factory AgentDTO({
    required String name,
    required List<TaskDTO> tasks,
    required ModelDTO model,
    int? id,
  }) = _AgentDTO;

  /// @nodoc
  factory AgentDTO.fromDomain(Agent agent) {
    return AgentDTO(
      name: agent.name.getOrCrash(),
      tasks: agent.tasks.map(TaskDTO.fromDomain).toList(),
      model: ModelDTO.fromDomain(agent.model),
      id: agent.id,
    );
  }

  /// @nodoc
  factory AgentDTO.fromAdapter(IsarAgent agent) {
    return AgentDTO(
      name: agent.name,
      tasks: agent.tasks.map(TaskDTO.fromAdapter).toList(),
      model: ModelDTO.fromAdapter(agent.model.value!),
      id: agent.id,
    );
  }

  /// @nodoc
  factory AgentDTO.fromJson(Map<String, dynamic>? json) =>
      _$AgentDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension AgentDTOX on AgentDTO {
  /// @nodoc
  Agent toDomain() => Agent(
        name: Label(name),
        tasks: tasks.map((task) => task.toDomain()).toList(),
        model: model.toDomain(),
        id: id,
      );

  /// @nodoc
  IsarAgent toAdapter() => IsarAgent(
        name: name,
        id: id,
      )
        ..tasks.addAll(
          tasks.map((task) => task.toAdapter()).toList(),
        )
        ..model.value = model.toAdapter();
}
