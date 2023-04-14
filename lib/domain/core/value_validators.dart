import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
Result<String, ValueFailure<String>> validateName(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateApiKey(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateGoal(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateRole(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateTask(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<String, ValueFailure<String>> validateThought(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}

/// @nodoc
Result<double, ValueFailure<double>> validateTemperature(double input) {
  if (input < 0) {
    return Err(ValueFailure.tooLow(input));
  }
  if (input > 1) {
    return Err(ValueFailure.tooHigh(input));
  }
  return Ok(input);
}
