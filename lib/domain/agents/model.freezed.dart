// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Model {
  Name get name => throw _privateConstructorUsedError;
  Temperature get temperature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call({Name name, Temperature temperature});
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$_ModelCopyWith(_$_Model value, $Res Function(_$_Model) then) =
      __$$_ModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Name name, Temperature temperature});
}

/// @nodoc
class __$$_ModelCopyWithImpl<$Res> extends _$ModelCopyWithImpl<$Res, _$_Model>
    implements _$$_ModelCopyWith<$Res> {
  __$$_ModelCopyWithImpl(_$_Model _value, $Res Function(_$_Model) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? temperature = null,
  }) {
    return _then(_$_Model(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
    ));
  }
}

/// @nodoc

class _$_Model implements _Model {
  _$_Model({required this.name, required this.temperature});

  @override
  final Name name;
  @override
  final Temperature temperature;

  @override
  String toString() {
    return 'Model(name: $name, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Model &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelCopyWith<_$_Model> get copyWith =>
      __$$_ModelCopyWithImpl<_$_Model>(this, _$identity);
}

abstract class _Model implements Model {
  factory _Model(
      {required final Name name,
      required final Temperature temperature}) = _$_Model;

  @override
  Name get name;
  @override
  Temperature get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_ModelCopyWith<_$_Model> get copyWith =>
      throw _privateConstructorUsedError;
}