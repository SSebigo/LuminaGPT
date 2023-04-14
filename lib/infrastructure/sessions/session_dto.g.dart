// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionDTO _$$_SessionDTOFromJson(Map<String, dynamic> json) =>
    _$_SessionDTO(
      name: json['name'] as String,
      model: json['model'] as String,
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SessionDTOToJson(_$_SessionDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'temperature': instance.temperature,
    };
