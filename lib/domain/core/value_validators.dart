import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
Result<String, ValueFailure<String>> validateNonEmpty(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<double, ValueFailure<double>> validateNotTooHigh(
  double input,
  double threshold,
) {
  if (input > threshold) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<double, ValueFailure<double>> validateNotTooLow(
  double input,
  double threshold,
) {
  if (input < threshold) {
    return Err(ValueFailure.tooLow(input));
  }
  return Ok(input);
}
