import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:lumina_gpt/domain/core/value_object.dart';
import 'package:lumina_gpt/domain/core/value_validators.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
class ApiKey extends ValueObject<String> {
  /// @nodoc
  factory ApiKey(String input) {
    return ApiKey._(
      validateApiKey(input),
    );
  }

  const ApiKey._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
