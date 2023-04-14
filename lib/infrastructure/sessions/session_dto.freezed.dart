// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionDTO _$SessionDTOFromJson(Map<String, dynamic> json) {
  return _SessionDTO.fromJson(json);
}

/// @nodoc
mixin _$SessionDTO {
  String get name => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDTOCopyWith<SessionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDTOCopyWith<$Res> {
  factory $SessionDTOCopyWith(
          SessionDTO value, $Res Function(SessionDTO) then) =
      _$SessionDTOCopyWithImpl<$Res, SessionDTO>;
  @useResult
  $Res call({String name, String model, double temperature});
}

/// @nodoc
class _$SessionDTOCopyWithImpl<$Res, $Val extends SessionDTO>
    implements $SessionDTOCopyWith<$Res> {
  _$SessionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionDTOCopyWith<$Res>
    implements $SessionDTOCopyWith<$Res> {
  factory _$$_SessionDTOCopyWith(
          _$_SessionDTO value, $Res Function(_$_SessionDTO) then) =
      __$$_SessionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String model, double temperature});
}

/// @nodoc
class __$$_SessionDTOCopyWithImpl<$Res>
    extends _$SessionDTOCopyWithImpl<$Res, _$_SessionDTO>
    implements _$$_SessionDTOCopyWith<$Res> {
  __$$_SessionDTOCopyWithImpl(
      _$_SessionDTO _value, $Res Function(_$_SessionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? temperature = null,
  }) {
    return _then(_$_SessionDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionDTO implements _SessionDTO {
  _$_SessionDTO(
      {required this.name, required this.model, required this.temperature});

  factory _$_SessionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SessionDTOFromJson(json);

  @override
  final String name;
  @override
  final String model;
  @override
  final double temperature;

  @override
  String toString() {
    return 'SessionDTO(name: $name, model: $model, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, model, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionDTOCopyWith<_$_SessionDTO> get copyWith =>
      __$$_SessionDTOCopyWithImpl<_$_SessionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionDTOToJson(
      this,
    );
  }
}

abstract class _SessionDTO implements SessionDTO {
  factory _SessionDTO(
      {required final String name,
      required final String model,
      required final double temperature}) = _$_SessionDTO;

  factory _SessionDTO.fromJson(Map<String, dynamic> json) =
      _$_SessionDTO.fromJson;

  @override
  String get name;
  @override
  String get model;
  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$_SessionDTOCopyWith<_$_SessionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
