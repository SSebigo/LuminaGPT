// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelDTO _$$_ModelDTOFromJson(Map<String, dynamic> json) => _$_ModelDTO(
      name: json['name'] as String,
      temperature: (json['temperature'] as num?)?.toDouble(),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ModelDTOToJson(_$_ModelDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'temperature': instance.temperature,
      'id': instance.id,
    };
