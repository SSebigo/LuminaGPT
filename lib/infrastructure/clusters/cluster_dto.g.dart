// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClusterDTO _$$_ClusterDTOFromJson(Map<String, dynamic> json) =>
    _$_ClusterDTO(
      name: json['name'] as String,
      goal: json['goal'] as String,
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => TaskDTO.fromJson(e as Map<String, dynamic>?))
          .toList(),
      knowledge: json['knowledge'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ClusterDTOToJson(_$_ClusterDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'goal': instance.goal,
      'tasks': instance.tasks,
      'knowledge': instance.knowledge,
      'id': instance.id,
    };
