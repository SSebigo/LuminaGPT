// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Agent {
  Label get name => throw _privateConstructorUsedError;
  Model get completionModel => throw _privateConstructorUsedError;
  Model get embeddingModel => throw _privateConstructorUsedError;
  List<Cluster> get clusters => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res, Agent>;
  @useResult
  $Res call(
      {Label name,
      Model completionModel,
      Model embeddingModel,
      List<Cluster> clusters,
      int? id});

  $ModelCopyWith<$Res> get completionModel;
  $ModelCopyWith<$Res> get embeddingModel;
}

/// @nodoc
class _$AgentCopyWithImpl<$Res, $Val extends Agent>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? completionModel = null,
    Object? embeddingModel = null,
    Object? clusters = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Label,
      completionModel: null == completionModel
          ? _value.completionModel
          : completionModel // ignore: cast_nullable_to_non_nullable
              as Model,
      embeddingModel: null == embeddingModel
          ? _value.embeddingModel
          : embeddingModel // ignore: cast_nullable_to_non_nullable
              as Model,
      clusters: null == clusters
          ? _value.clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<Cluster>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelCopyWith<$Res> get completionModel {
    return $ModelCopyWith<$Res>(_value.completionModel, (value) {
      return _then(_value.copyWith(completionModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelCopyWith<$Res> get embeddingModel {
    return $ModelCopyWith<$Res>(_value.embeddingModel, (value) {
      return _then(_value.copyWith(embeddingModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$_AgentCopyWith(_$_Agent value, $Res Function(_$_Agent) then) =
      __$$_AgentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Label name,
      Model completionModel,
      Model embeddingModel,
      List<Cluster> clusters,
      int? id});

  @override
  $ModelCopyWith<$Res> get completionModel;
  @override
  $ModelCopyWith<$Res> get embeddingModel;
}

/// @nodoc
class __$$_AgentCopyWithImpl<$Res> extends _$AgentCopyWithImpl<$Res, _$_Agent>
    implements _$$_AgentCopyWith<$Res> {
  __$$_AgentCopyWithImpl(_$_Agent _value, $Res Function(_$_Agent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? completionModel = null,
    Object? embeddingModel = null,
    Object? clusters = null,
    Object? id = freezed,
  }) {
    return _then(_$_Agent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Label,
      completionModel: null == completionModel
          ? _value.completionModel
          : completionModel // ignore: cast_nullable_to_non_nullable
              as Model,
      embeddingModel: null == embeddingModel
          ? _value.embeddingModel
          : embeddingModel // ignore: cast_nullable_to_non_nullable
              as Model,
      clusters: null == clusters
          ? _value._clusters
          : clusters // ignore: cast_nullable_to_non_nullable
              as List<Cluster>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Agent implements _Agent {
  _$_Agent(
      {required this.name,
      required this.completionModel,
      required this.embeddingModel,
      required final List<Cluster> clusters,
      this.id})
      : _clusters = clusters;

  @override
  final Label name;
  @override
  final Model completionModel;
  @override
  final Model embeddingModel;
  final List<Cluster> _clusters;
  @override
  List<Cluster> get clusters {
    if (_clusters is EqualUnmodifiableListView) return _clusters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clusters);
  }

  @override
  final int? id;

  @override
  String toString() {
    return 'Agent(name: $name, completionModel: $completionModel, embeddingModel: $embeddingModel, clusters: $clusters, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.completionModel, completionModel) ||
                other.completionModel == completionModel) &&
            (identical(other.embeddingModel, embeddingModel) ||
                other.embeddingModel == embeddingModel) &&
            const DeepCollectionEquality().equals(other._clusters, _clusters) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, completionModel,
      embeddingModel, const DeepCollectionEquality().hash(_clusters), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      __$$_AgentCopyWithImpl<_$_Agent>(this, _$identity);
}

abstract class _Agent implements Agent {
  factory _Agent(
      {required final Label name,
      required final Model completionModel,
      required final Model embeddingModel,
      required final List<Cluster> clusters,
      final int? id}) = _$_Agent;

  @override
  Label get name;
  @override
  Model get completionModel;
  @override
  Model get embeddingModel;
  @override
  List<Cluster> get clusters;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      throw _privateConstructorUsedError;
}
