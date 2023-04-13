import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:lumina_gpt/domain/core/value_object.dart';
import 'package:lumina_gpt/domain/core/value_validators.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
class Name extends ValueObject<String> {
  /// @nodoc
  factory Name(String input) {
    return Name._(
      validateName(input),
    );
  }

  /// @nodoc
  factory Name.forSaving(Result<String, ValueFailure<String>> input) {
    return Name._(
      Ok(input.unwrapOr('')),
    );
  }

  const Name._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
