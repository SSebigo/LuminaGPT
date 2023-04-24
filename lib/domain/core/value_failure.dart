import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

/// @nodoc
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  /// @nodoc
  const factory ValueFailure.emptyInput(T failedValue) = EmptyInput<T>;

  /// @nodoc
  const factory ValueFailure.tooHigh(T failedValue) = TooHigh<T>;

  /// @nodoc
  const factory ValueFailure.tooLow(T failedValue) = TooLow<T>;
}
