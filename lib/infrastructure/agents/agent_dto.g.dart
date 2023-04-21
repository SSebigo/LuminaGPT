// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AgentDTO _$$_AgentDTOFromJson(Map<String, dynamic> json) => _$_AgentDTO(
      name: json['name'] as String,
      clusters: (json['clusters'] as List<dynamic>)
          .map((e) => ClusterDTO.fromJson(e as Map<String, dynamic>?))
          .toList(),
      completionModel:
          ModelDTO.fromJson(json['completionModel'] as Map<String, dynamic>?),
      embeddingModel:
          ModelDTO.fromJson(json['embeddingModel'] as Map<String, dynamic>?),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_AgentDTOToJson(_$_AgentDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'clusters': instance.clusters,
      'completionModel': instance.completionModel,
      'embeddingModel': instance.embeddingModel,
      'id': instance.id,
    };
