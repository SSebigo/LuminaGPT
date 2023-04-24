import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/model.dart';
import 'package:lumina_gpt/domain/agents/temperature.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_model.dart';

part 'model_dto.freezed.dart';
part 'model_dto.g.dart';

/// @nodoc
@freezed
class ModelDTO with _$ModelDTO {
  /// @nodoc
  factory ModelDTO({
    required String name,
    double? temperature,
    int? id,
  }) = _ModelDTO;

  /// @nodoc
  factory ModelDTO.fromDomain(Model model) {
    return ModelDTO(
      name: model.name.getOrCrash(),
      temperature: model.temperature?.getOrCrash(),
      id: model.id,
    );
  }

  /// @nodoc
  factory ModelDTO.fromAdapter(IsarModel model) {
    return ModelDTO(
      name: model.name,
      temperature: model.temperature,
      id: model.id,
    );
  }

  /// @nodoc
  factory ModelDTO.fromJson(Map<String, dynamic>? json) =>
      _$ModelDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension ModelDTOX on ModelDTO {
  /// @nodoc
  Model toDomain() => Model(
        name: Label(name),
        temperature: temperature != null ? Temperature(temperature!) : null,
        id: id,
      );

  /// @nodoc
  IsarModel toAdapter() => IsarModel(
        name: name,
        temperature: temperature,
        id: id,
      );
}
