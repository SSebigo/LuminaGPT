import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
Result<String, ValueFailure<String>> validateName(String input) {
  if (input.isEmpty) {
    return Err(ValueFailure.emptyInput(input));
  }
  return Ok(input);
}
