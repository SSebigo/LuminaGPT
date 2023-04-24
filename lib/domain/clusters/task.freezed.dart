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
  Label get description => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<double>? get descriptionEmbeddings => throw _privateConstructorUsedError;
  Label? get result => throw _privateConstructorUsedError;
  List<double>? get resultEmbeddings => throw _privateConstructorUsedError;
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
      {Label description,
      bool done,
      DateTime createdAt,
      List<double>? descriptionEmbeddings,
      Label? result,
      List<double>? resultEmbeddings,
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
    Object? description = null,
    Object? done = null,
    Object? createdAt = null,
    Object? descriptionEmbeddings = freezed,
    Object? result = freezed,
    Object? resultEmbeddings = freezed,
    Object? id = freezed,
    Object? priority = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Label,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      descriptionEmbeddings: freezed == descriptionEmbeddings
          ? _value.descriptionEmbeddings
          : descriptionEmbeddings // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Label?,
      resultEmbeddings: freezed == resultEmbeddings
          ? _value.resultEmbeddings
          : resultEmbeddings // ignore: cast_nullable_to_non_nullable
              as List<double>?,
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
      {Label description,
      bool done,
      DateTime createdAt,
      List<double>? descriptionEmbeddings,
      Label? result,
      List<double>? resultEmbeddings,
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
    Object? description = null,
    Object? done = null,
    Object? createdAt = null,
    Object? descriptionEmbeddings = freezed,
    Object? result = freezed,
    Object? resultEmbeddings = freezed,
    Object? id = freezed,
    Object? priority = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Task(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Label,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      descriptionEmbeddings: freezed == descriptionEmbeddings
          ? _value._descriptionEmbeddings
          : descriptionEmbeddings // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Label?,
      resultEmbeddings: freezed == resultEmbeddings
          ? _value._resultEmbeddings
          : resultEmbeddings // ignore: cast_nullable_to_non_nullable
              as List<double>?,
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
      {required this.description,
      required this.done,
      required this.createdAt,
      final List<double>? descriptionEmbeddings,
      this.result,
      final List<double>? resultEmbeddings,
      this.id,
      this.priority,
      this.updatedAt})
      : _descriptionEmbeddings = descriptionEmbeddings,
        _resultEmbeddings = resultEmbeddings;

  @override
  final Label description;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  final List<double>? _descriptionEmbeddings;
  @override
  List<double>? get descriptionEmbeddings {
    final value = _descriptionEmbeddings;
    if (value == null) return null;
    if (_descriptionEmbeddings is EqualUnmodifiableListView)
      return _descriptionEmbeddings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Label? result;
  final List<double>? _resultEmbeddings;
  @override
  List<double>? get resultEmbeddings {
    final value = _resultEmbeddings;
    if (value == null) return null;
    if (_resultEmbeddings is EqualUnmodifiableListView)
      return _resultEmbeddings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final int? priority;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Task(description: $description, done: $done, createdAt: $createdAt, descriptionEmbeddings: $descriptionEmbeddings, result: $result, resultEmbeddings: $resultEmbeddings, id: $id, priority: $priority, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._descriptionEmbeddings, _descriptionEmbeddings) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality()
                .equals(other._resultEmbeddings, _resultEmbeddings) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      done,
      createdAt,
      const DeepCollectionEquality().hash(_descriptionEmbeddings),
      result,
      const DeepCollectionEquality().hash(_resultEmbeddings),
      id,
      priority,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {required final Label description,
      required final bool done,
      required final DateTime createdAt,
      final List<double>? descriptionEmbeddings,
      final Label? result,
      final List<double>? resultEmbeddings,
      final int? id,
      final int? priority,
      final DateTime? updatedAt}) = _$_Task;

  @override
  Label get description;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  List<double>? get descriptionEmbeddings;
  @override
  Label? get result;
  @override
  List<double>? get resultEmbeddings;
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
