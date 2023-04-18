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
      model: ModelDTO.fromJson(json['model'] as Map<String, dynamic>?),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_AgentDTOToJson(_$_AgentDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'clusters': instance.clusters,
      'model': instance.model,
      'id': instance.id,
    };
