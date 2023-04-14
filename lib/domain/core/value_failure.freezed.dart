// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failedValue) tooHigh,
    required TResult Function(T failedValue) tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? emptyInput,
    TResult? Function(T failedValue)? tooHigh,
    TResult? Function(T failedValue)? tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failedValue)? tooHigh,
    TResult Function(T failedValue)? tooLow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(TooHigh<T> value) tooHigh,
    required TResult Function(TooLow<T> value) tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInput<T> value)? emptyInput,
    TResult? Function(TooHigh<T> value)? tooHigh,
    TResult? Function(TooLow<T> value)? tooLow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(TooHigh<T> value)? tooHigh,
    TResult Function(TooLow<T> value)? tooLow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyInputCopyWith(
          _$EmptyInput<T> value, $Res Function(_$EmptyInput<T>) then) =
      __$$EmptyInputCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyInput<T>>
    implements _$$EmptyInputCopyWith<T, $Res> {
  __$$EmptyInputCopyWithImpl(
      _$EmptyInput<T> _value, $Res Function(_$EmptyInput<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyInput<T>(
      freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyInput<T> implements EmptyInput<T> {
  const _$EmptyInput(this.failedValue);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyInput<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyInputCopyWith<T, _$EmptyInput<T>> get copyWith =>
      __$$EmptyInputCopyWithImpl<T, _$EmptyInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failedValue) tooHigh,
    required TResult Function(T failedValue) tooLow,
  }) {
    return emptyInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? emptyInput,
    TResult? Function(T failedValue)? tooHigh,
    TResult? Function(T failedValue)? tooLow,
  }) {
    return emptyInput?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failedValue)? tooHigh,
    TResult Function(T failedValue)? tooLow,
    required TResult orElse(),
  }) {
    if (emptyInput != null) {
      return emptyInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(TooHigh<T> value) tooHigh,
    required TResult Function(TooLow<T> value) tooLow,
  }) {
    return emptyInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInput<T> value)? emptyInput,
    TResult? Function(TooHigh<T> value)? tooHigh,
    TResult? Function(TooLow<T> value)? tooLow,
  }) {
    return emptyInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(TooHigh<T> value)? tooHigh,
    TResult Function(TooLow<T> value)? tooLow,
    required TResult orElse(),
  }) {
    if (emptyInput != null) {
      return emptyInput(this);
    }
    return orElse();
  }
}

abstract class EmptyInput<T> implements ValueFailure<T> {
  const factory EmptyInput(final T failedValue) = _$EmptyInput<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyInputCopyWith<T, _$EmptyInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooHighCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$TooHighCopyWith(
          _$TooHigh<T> value, $Res Function(_$TooHigh<T>) then) =
      __$$TooHighCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$TooHighCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$TooHigh<T>>
    implements _$$TooHighCopyWith<T, $Res> {
  __$$TooHighCopyWithImpl(
      _$TooHigh<T> _value, $Res Function(_$TooHigh<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$TooHigh<T>(
      freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$TooHigh<T> implements TooHigh<T> {
  const _$TooHigh(this.failedValue);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.tooHigh(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooHigh<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooHighCopyWith<T, _$TooHigh<T>> get copyWith =>
      __$$TooHighCopyWithImpl<T, _$TooHigh<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failedValue) tooHigh,
    required TResult Function(T failedValue) tooLow,
  }) {
    return tooHigh(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? emptyInput,
    TResult? Function(T failedValue)? tooHigh,
    TResult? Function(T failedValue)? tooLow,
  }) {
    return tooHigh?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failedValue)? tooHigh,
    TResult Function(T failedValue)? tooLow,
    required TResult orElse(),
  }) {
    if (tooHigh != null) {
      return tooHigh(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(TooHigh<T> value) tooHigh,
    required TResult Function(TooLow<T> value) tooLow,
  }) {
    return tooHigh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInput<T> value)? emptyInput,
    TResult? Function(TooHigh<T> value)? tooHigh,
    TResult? Function(TooLow<T> value)? tooLow,
  }) {
    return tooHigh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(TooHigh<T> value)? tooHigh,
    TResult Function(TooLow<T> value)? tooLow,
    required TResult orElse(),
  }) {
    if (tooHigh != null) {
      return tooHigh(this);
    }
    return orElse();
  }
}

abstract class TooHigh<T> implements ValueFailure<T> {
  const factory TooHigh(final T failedValue) = _$TooHigh<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$TooHighCopyWith<T, _$TooHigh<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooLowCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$TooLowCopyWith(
          _$TooLow<T> value, $Res Function(_$TooLow<T>) then) =
      __$$TooLowCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$TooLowCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$TooLow<T>>
    implements _$$TooLowCopyWith<T, $Res> {
  __$$TooLowCopyWithImpl(_$TooLow<T> _value, $Res Function(_$TooLow<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$TooLow<T>(
      freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$TooLow<T> implements TooLow<T> {
  const _$TooLow(this.failedValue);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.tooLow(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooLow<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooLowCopyWith<T, _$TooLow<T>> get copyWith =>
      __$$TooLowCopyWithImpl<T, _$TooLow<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyInput,
    required TResult Function(T failedValue) tooHigh,
    required TResult Function(T failedValue) tooLow,
  }) {
    return tooLow(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? emptyInput,
    TResult? Function(T failedValue)? tooHigh,
    TResult? Function(T failedValue)? tooLow,
  }) {
    return tooLow?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyInput,
    TResult Function(T failedValue)? tooHigh,
    TResult Function(T failedValue)? tooLow,
    required TResult orElse(),
  }) {
    if (tooLow != null) {
      return tooLow(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyInput<T> value) emptyInput,
    required TResult Function(TooHigh<T> value) tooHigh,
    required TResult Function(TooLow<T> value) tooLow,
  }) {
    return tooLow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyInput<T> value)? emptyInput,
    TResult? Function(TooHigh<T> value)? tooHigh,
    TResult? Function(TooLow<T> value)? tooLow,
  }) {
    return tooLow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyInput<T> value)? emptyInput,
    TResult Function(TooHigh<T> value)? tooHigh,
    TResult Function(TooLow<T> value)? tooLow,
    required TResult orElse(),
  }) {
    if (tooLow != null) {
      return tooLow(this);
    }
    return orElse();
  }
}

abstract class TooLow<T> implements ValueFailure<T> {
  const factory TooLow(final T failedValue) = _$TooLow<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$TooLowCopyWith<T, _$TooLow<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
