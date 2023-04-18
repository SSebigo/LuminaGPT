// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Cluster {
  Label get name => throw _privateConstructorUsedError;
  Label get goal => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  Label? get knowledge => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClusterCopyWith<Cluster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClusterCopyWith<$Res> {
  factory $ClusterCopyWith(Cluster value, $Res Function(Cluster) then) =
      _$ClusterCopyWithImpl<$Res, Cluster>;
  @useResult
  $Res call(
      {Label name, Label goal, List<Task> tasks, Label? knowledge, int? id});
}

/// @nodoc
class _$ClusterCopyWithImpl<$Res, $Val extends Cluster>
    implements $ClusterCopyWith<$Res> {
  _$ClusterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? goal = null,
    Object? tasks = null,
    Object? knowledge = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Label,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Label,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      knowledge: freezed == knowledge
          ? _value.knowledge
          : knowledge // ignore: cast_nullable_to_non_nullable
              as Label?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClusterCopyWith<$Res> implements $ClusterCopyWith<$Res> {
  factory _$$_ClusterCopyWith(
          _$_Cluster value, $Res Function(_$_Cluster) then) =
      __$$_ClusterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Label name, Label goal, List<Task> tasks, Label? knowledge, int? id});
}

/// @nodoc
class __$$_ClusterCopyWithImpl<$Res>
    extends _$ClusterCopyWithImpl<$Res, _$_Cluster>
    implements _$$_ClusterCopyWith<$Res> {
  __$$_ClusterCopyWithImpl(_$_Cluster _value, $Res Function(_$_Cluster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? goal = null,
    Object? tasks = null,
    Object? knowledge = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Cluster(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Label,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Label,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      knowledge: freezed == knowledge
          ? _value.knowledge
          : knowledge // ignore: cast_nullable_to_non_nullable
              as Label?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Cluster implements _Cluster {
  _$_Cluster(
      {required this.name,
      required this.goal,
      required final List<Task> tasks,
      this.knowledge,
      this.id})
      : _tasks = tasks;

  @override
  final Label name;
  @override
  final Label goal;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final Label? knowledge;
  @override
  final int? id;

  @override
  String toString() {
    return 'Cluster(name: $name, goal: $goal, tasks: $tasks, knowledge: $knowledge, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cluster &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.knowledge, knowledge) ||
                other.knowledge == knowledge) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, goal,
      const DeepCollectionEquality().hash(_tasks), knowledge, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClusterCopyWith<_$_Cluster> get copyWith =>
      __$$_ClusterCopyWithImpl<_$_Cluster>(this, _$identity);
}

abstract class _Cluster implements Cluster {
  factory _Cluster(
      {required final Label name,
      required final Label goal,
      required final List<Task> tasks,
      final Label? knowledge,
      final int? id}) = _$_Cluster;

  @override
  Label get name;
  @override
  Label get goal;
  @override
  List<Task> get tasks;
  @override
  Label? get knowledge;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ClusterCopyWith<_$_Cluster> get copyWith =>
      throw _privateConstructorUsedError;
}
