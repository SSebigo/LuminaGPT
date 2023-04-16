import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/temperature.dart';
import 'package:lumina_gpt/domain/core/label.dart';

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
}
