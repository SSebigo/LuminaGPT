// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelDTO _$ModelDTOFromJson(Map<String, dynamic> json) {
  return _ModelDTO.fromJson(json);
}

/// @nodoc
mixin _$ModelDTO {
  String get name => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelDTOCopyWith<ModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelDTOCopyWith<$Res> {
  factory $ModelDTOCopyWith(ModelDTO value, $Res Function(ModelDTO) then) =
      _$ModelDTOCopyWithImpl<$Res, ModelDTO>;
  @useResult
  $Res call({String name, double temperature, int? id});
}

/// @nodoc
class _$ModelDTOCopyWithImpl<$Res, $Val extends ModelDTO>
    implements $ModelDTOCopyWith<$Res> {
  _$ModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? temperature = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModelDTOCopyWith<$Res> implements $ModelDTOCopyWith<$Res> {
  factory _$$_ModelDTOCopyWith(
          _$_ModelDTO value, $Res Function(_$_ModelDTO) then) =
      __$$_ModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double temperature, int? id});
}

/// @nodoc
class __$$_ModelDTOCopyWithImpl<$Res>
    extends _$ModelDTOCopyWithImpl<$Res, _$_ModelDTO>
    implements _$$_ModelDTOCopyWith<$Res> {
  __$$_ModelDTOCopyWithImpl(
      _$_ModelDTO _value, $Res Function(_$_ModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? temperature = null,
    Object? id = freezed,
  }) {
    return _then(_$_ModelDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelDTO implements _ModelDTO {
  _$_ModelDTO({required this.name, required this.temperature, this.id});

  factory _$_ModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ModelDTOFromJson(json);

  @override
  final String name;
  @override
  final double temperature;
  @override
  final int? id;

  @override
  String toString() {
    return 'ModelDTO(name: $name, temperature: $temperature, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, temperature, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelDTOCopyWith<_$_ModelDTO> get copyWith =>
      __$$_ModelDTOCopyWithImpl<_$_ModelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelDTOToJson(
      this,
    );
  }
}

abstract class _ModelDTO implements ModelDTO {
  factory _ModelDTO(
      {required final String name,
      required final double temperature,
      final int? id}) = _$_ModelDTO;

  factory _ModelDTO.fromJson(Map<String, dynamic> json) = _$_ModelDTO.fromJson;

  @override
  String get name;
  @override
  double get temperature;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ModelDTOCopyWith<_$_ModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
