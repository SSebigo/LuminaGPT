// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDTO _$TaskDTOFromJson(Map<String, dynamic> json) {
  return _TaskDTO.fromJson(json);
}

/// @nodoc
mixin _$TaskDTO {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDTOCopyWith<TaskDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDTOCopyWith<$Res> {
  factory $TaskDTOCopyWith(TaskDTO value, $Res Function(TaskDTO) then) =
      _$TaskDTOCopyWithImpl<$Res, TaskDTO>;
  @useResult
  $Res call(
      {String name,
      String description,
      String role,
      String goal,
      bool done,
      DateTime createdAt,
      String? result,
      int? id,
      int? parentId});
}

/// @nodoc
class _$TaskDTOCopyWithImpl<$Res, $Val extends TaskDTO>
    implements $TaskDTOCopyWith<$Res> {
  _$TaskDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? role = null,
    Object? goal = null,
    Object? done = null,
    Object? createdAt = null,
    Object? result = freezed,
    Object? id = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskDTOCopyWith<$Res> implements $TaskDTOCopyWith<$Res> {
  factory _$$_TaskDTOCopyWith(
          _$_TaskDTO value, $Res Function(_$_TaskDTO) then) =
      __$$_TaskDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String role,
      String goal,
      bool done,
      DateTime createdAt,
      String? result,
      int? id,
      int? parentId});
}

/// @nodoc
class __$$_TaskDTOCopyWithImpl<$Res>
    extends _$TaskDTOCopyWithImpl<$Res, _$_TaskDTO>
    implements _$$_TaskDTOCopyWith<$Res> {
  __$$_TaskDTOCopyWithImpl(_$_TaskDTO _value, $Res Function(_$_TaskDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? role = null,
    Object? goal = null,
    Object? done = null,
    Object? createdAt = null,
    Object? result = freezed,
    Object? id = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_$_TaskDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDTO implements _TaskDTO {
  _$_TaskDTO(
      {required this.name,
      required this.description,
      required this.role,
      required this.goal,
      required this.done,
      required this.createdAt,
      this.result,
      this.id,
      this.parentId});

  factory _$_TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDTOFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String role;
  @override
  final String goal;
  @override
  final bool done;
  @override
  final DateTime createdAt;
  @override
  final String? result;
  @override
  final int? id;
  @override
  final int? parentId;

  @override
  String toString() {
    return 'TaskDTO(name: $name, description: $description, role: $role, goal: $goal, done: $done, createdAt: $createdAt, result: $result, id: $id, parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, role, goal,
      done, createdAt, result, id, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDTOCopyWith<_$_TaskDTO> get copyWith =>
      __$$_TaskDTOCopyWithImpl<_$_TaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDTOToJson(
      this,
    );
  }
}

abstract class _TaskDTO implements TaskDTO {
  factory _TaskDTO(
      {required final String name,
      required final String description,
      required final String role,
      required final String goal,
      required final bool done,
      required final DateTime createdAt,
      final String? result,
      final int? id,
      final int? parentId}) = _$_TaskDTO;

  factory _TaskDTO.fromJson(Map<String, dynamic> json) = _$_TaskDTO.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get role;
  @override
  String get goal;
  @override
  bool get done;
  @override
  DateTime get createdAt;
  @override
  String? get result;
  @override
  int? get id;
  @override
  int? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDTOCopyWith<_$_TaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
