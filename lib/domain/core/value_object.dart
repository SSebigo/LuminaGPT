import 'package:equatable/equatable.dart';
import 'package:lumina_gpt/domain/core/errors.dart';
import 'package:lumina_gpt/domain/core/value_failure.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
abstract class ValueObject<T extends Object> extends Equatable {
  /// @nodoc
  const ValueObject();

  /// @nodoc
  Result<T, ValueFailure<T>> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // ignore: only_throw_errors
    return value.match((ok) => ok, (err) => throw UnexpectedValueError(err));
  }

  /// Return [Null] on error
  T? getOrNull() {
    return value.match((ok) => ok, (err) => null);
  }

  /// @nodoc
  Result<Unit, ValueFailure<dynamic>> get failureOrUnit {
    return value.match(
      (_) => const Ok(unit),
      Err.new,
    );
  }

  /// @nodoc
  bool get isValid => value.isOk();

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}
