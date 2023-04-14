import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:lumina_gpt/domain/core/value_object.dart';
import 'package:lumina_gpt/domain/core/value_validators.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
class Goal extends ValueObject<String> {
  /// @nodoc
  factory Goal(String input) {
    return Goal._(
      validateGoal(input),
    );
  }

  const Goal._(this.value);

  @override
  final Result<String, ValueFailure<String>> value;
}
