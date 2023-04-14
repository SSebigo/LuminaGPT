import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/name.dart';
import 'package:lumina_gpt/domain/agents/temperature.dart';
import 'package:lumina_gpt/utils/constants/models.dart';
import 'package:lumina_gpt/utils/constants/temperatures.dart';

part 'model.freezed.dart';

/// @nodoc
@freezed
class Model with _$Model {
  /// @nodoc
  factory Model({
    required Name name,
    required Temperature temperature,
  }) = _Model;

  /// @nodoc
  factory Model.empty() => Model(
        name: Name(''),
        temperature: Temperature(0),
      );

  /// @nodoc
  factory Model.base() => Model(
        name: Name(gpt35Turbo),
        temperature: Temperature(defaultTemperature),
      );
}
