import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_agent.dart';
import 'package:lumina_gpt/infrastructure/agents/model_dto.dart';
import 'package:lumina_gpt/infrastructure/clusters/cluster_dto.dart';

part 'agent_dto.freezed.dart';
part 'agent_dto.g.dart';

/// @nodoc
@freezed
class AgentDTO with _$AgentDTO {
  /// @nodoc
  factory AgentDTO({
    required String name,
    required List<ClusterDTO> clusters,
    required ModelDTO completionModel,
    required ModelDTO embeddingModel,
    int? id,
  }) = _AgentDTO;

  /// @nodoc
  factory AgentDTO.fromDomain(Agent agent) {
    return AgentDTO(
      name: agent.name.getOrCrash(),
      clusters: agent.clusters.map(ClusterDTO.fromDomain).toList(),
      completionModel: ModelDTO.fromDomain(agent.completionModel),
      embeddingModel: ModelDTO.fromDomain(agent.embeddingModel),
      id: agent.id,
    );
  }

  /// @nodoc
  factory AgentDTO.fromAdapter(IsarAgent agent) {
    return AgentDTO(
      name: agent.name,
      clusters: agent.clusters.map(ClusterDTO.fromAdapter).toList(),
      completionModel: ModelDTO.fromAdapter(agent.completionModel.value!),
      embeddingModel: ModelDTO.fromAdapter(agent.embeddingModel.value!),
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
        clusters: clusters.map((task) => task.toDomain()).toList(),
        completionModel: completionModel.toDomain(),
        embeddingModel: embeddingModel.toDomain(),
        id: id,
      );

  /// @nodoc
  IsarAgent toAdapter() => IsarAgent(
        name: name,
        id: id,
      )
        ..clusters.addAll(
          clusters.map((task) => task.toAdapter()).toList(),
        )
        ..completionModel.value = completionModel.toAdapter()
        ..embeddingModel.value = embeddingModel.toAdapter();
}
