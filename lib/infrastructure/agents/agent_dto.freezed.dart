// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgentDTO _$AgentDTOFromJson(Map<String, dynamic> json) {
  return _AgentDTO.fromJson(json);
}

/// @nodoc
mixin _$AgentDTO {
  String get name => throw _privateConstructorUsedError;
  List<ClusterDTO> get clusters => throw _privateConstructorUsedError;
  ModelDTO get model => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentDTOCopyWith<AgentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentDTOCopyWith<$Res> {
  factory $AgentDTOCopyWith(AgentDTO value, $Res Function(AgentDTO) then) =
      _$AgentDTOCopyWithImpl<$Res, AgentDTO>;
  @useResult
  $Res call({String name, List<ClusterDTO> clusters, ModelDTO model, int? id});

  $ModelDTOCopyWith<$Res> get model;
}

/// @nodoc
class _$AgentDTOCopyWithImpl<$Res, $Val extends AgentDTO>
    implements $AgentDTOCopyWith<$Res> {
  _$AgentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? clusters = null,
    Object? model = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clusters: null == clusters
          ? _value.clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<ClusterDTO>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ModelDTO,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelDTOCopyWith<$Res> get model {
    return $ModelDTOCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AgentDTOCopyWith<$Res> implements $AgentDTOCopyWith<$Res> {
  factory _$$_AgentDTOCopyWith(
          _$_AgentDTO value, $Res Function(_$_AgentDTO) then) =
      __$$_AgentDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<ClusterDTO> clusters, ModelDTO model, int? id});

  @override
  $ModelDTOCopyWith<$Res> get model;
}

/// @nodoc
class __$$_AgentDTOCopyWithImpl<$Res>
    extends _$AgentDTOCopyWithImpl<$Res, _$_AgentDTO>
    implements _$$_AgentDTOCopyWith<$Res> {
  __$$_AgentDTOCopyWithImpl(
      _$_AgentDTO _value, $Res Function(_$_AgentDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? clusters = null,
    Object? model = null,
    Object? id = freezed,
  }) {
    return _then(_$_AgentDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clusters: null == clusters
          ? _value._clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<ClusterDTO>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ModelDTO,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgentDTO implements _AgentDTO {
  _$_AgentDTO(
      {required this.name,
      required final List<ClusterDTO> clusters,
      required this.model,
      this.id})
      : _clusters = clusters;

  factory _$_AgentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AgentDTOFromJson(json);

  @override
  final String name;
  final List<ClusterDTO> _clusters;
  @override
  List<ClusterDTO> get clusters {
    if (_clusters is EqualUnmodifiableListView) return _clusters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clusters);
  }

  @override
  final ModelDTO model;
  @override
  final int? id;

  @override
  String toString() {
    return 'AgentDTO(name: $name, clusters: $clusters, model: $model, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgentDTO &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._clusters, _clusters) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_clusters), model, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgentDTOCopyWith<_$_AgentDTO> get copyWith =>
      __$$_AgentDTOCopyWithImpl<_$_AgentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentDTOToJson(
      this,
    );
  }
}

abstract class _AgentDTO implements AgentDTO {
  factory _AgentDTO(
      {required final String name,
      required final List<ClusterDTO> clusters,
      required final ModelDTO model,
      final int? id}) = _$_AgentDTO;

  factory _AgentDTO.fromJson(Map<String, dynamic> json) = _$_AgentDTO.fromJson;

  @override
  String get name;
  @override
  List<ClusterDTO> get clusters;
  @override
  ModelDTO get model;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AgentDTOCopyWith<_$_AgentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
