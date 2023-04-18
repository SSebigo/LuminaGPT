import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/temperature.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/utils/constants/models.dart';
import 'package:lumina_gpt/utils/constants/temperatures.dart';

part 'model.freezed.dart';

/// @nodoc
@freezed
class Model with _$Model {
  /// @nodoc
  factory Model({
    required Label name,
    required Temperature temperature,
    int? id,
  }) = _Model;

  /// @nodoc
  factory Model.empty() => Model(
        name: Label(''),
        temperature: Temperature(0),
      );

  /// @nodoc
  factory Model.base() => Model(
        name: Label(gpt35Turbo),
        temperature: Temperature(defaultTemperature),
      );
}
