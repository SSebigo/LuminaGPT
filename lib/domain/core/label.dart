import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:lumina_gpt/domain/core/value_object.dart';
import 'package:lumina_gpt/domain/core/value_validators.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
class Label extends ValueObject<String> {
  /// @nodoc
  factory Label(String input) {
    return Label._(
      validateNonEmpty(input),
    );
  }

  const Label._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
