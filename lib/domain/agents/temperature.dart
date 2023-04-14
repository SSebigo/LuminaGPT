import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:lumina_gpt/domain/core/value_object.dart';
import 'package:lumina_gpt/domain/core/value_validators.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
class Temperature extends ValueObject<double> {
  /// @nodoc
  factory Temperature(double input) {
    return Temperature._(
      validateTemperature(input),
    );
  }

  const Temperature._(this.value);

  @override
  final Result<double, ValueFailure<double>> value;
}
