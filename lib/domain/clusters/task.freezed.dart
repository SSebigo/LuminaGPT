// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  Label get name => throw _privateConstructorUsedError;
  Label get description => throw _privateConstructorUsedError;
  Label get goal => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Label? get result => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get priority => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {Label name,
      Label description,
      Label goal,
      bool done,
      DateTime createdAt,
      Label? result,
      int? id,
      int? priority,
      DateTime? updatedAt});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? goal = null,
    Object? done = null,
    Object? createdAt = null,
    Object? result = freezed,
    Object? id = freezed,
    Object? priority = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Label,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Label,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Label,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Label?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Label name,
      Label description,
      Label goal,
      bool done,
      DateTime createdAt,
      Label? result,
      int? id,
      int? priority,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? goal = null,
    Object? done = null,
    Object? createdAt = null,
    Object? result = freezed,
    Object? id = freezed,
    Object? priority = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Task(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Label,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Label,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as Label,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Label?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Task implements _Task {
  _$_Task(
      {required this.name,
      required this.description,
      required this.goal,
      required this.done,
      required this.createdAt,
      this.result,
      this.id,
      this.priority,
      this.updatedAt});

  @override
  final Label name;
  @override
  final Label description;
  @override
  final Label goal;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  @override
  final Label? result;
  @override
  final int? id;
  @override
  final int? priority;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Task(name: $name, description: $description, goal: $goal, done: $done, createdAt: $createdAt, result: $result, id: $id, priority: $priority, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, goal, done,
      createdAt, result, id, priority, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {required final Label name,
      required final Label description,
      required final Label goal,
      required final bool done,
      required final DateTime createdAt,
      final Label? result,
      final int? id,
      final int? priority,
      final DateTime? updatedAt}) = _$_Task;

  @override
  Label get name;
  @override
  Label get description;
  @override
  Label get goal;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  Label? get result;
  @override
  int? get id;
  @override
  int? get priority;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
