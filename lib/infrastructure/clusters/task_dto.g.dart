// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDTO _$$_TaskDTOFromJson(Map<String, dynamic> json) => _$_TaskDTO(
      description: json['description'] as String,
      done: json['done'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      result: json['result'] as String?,
      id: json['id'] as int?,
      priority: json['priority'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_TaskDTOToJson(_$_TaskDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'done': instance.done,
      'createdAt': instance.createdAt.toIso8601String(),
      'result': instance.result,
      'id': instance.id,
      'priority': instance.priority,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
