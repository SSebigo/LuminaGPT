import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:lumina_gpt/domain/core/value_object.dart';
import 'package:lumina_gpt/domain/core/value_validators.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
class Role extends ValueObject<String> {
  /// @nodoc
  factory Role(String input) {
    return Role._(
      validateRole(input),
    );
  }

  const Role._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
