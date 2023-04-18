// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClusterDTO _$ClusterDTOFromJson(Map<String, dynamic> json) {
  return _ClusterDTO.fromJson(json);
}

/// @nodoc
mixin _$ClusterDTO {
  String get name => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  List<TaskDTO> get tasks => throw _privateConstructorUsedError;
  String? get knowledge => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClusterDTOCopyWith<ClusterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClusterDTOCopyWith<$Res> {
  factory $ClusterDTOCopyWith(
          ClusterDTO value, $Res Function(ClusterDTO) then) =
      _$ClusterDTOCopyWithImpl<$Res, ClusterDTO>;
  @useResult
  $Res call(
      {String name,
      String goal,
      List<TaskDTO> tasks,
      String? knowledge,
      int? id,
      String? uid});
}

/// @nodoc
class _$ClusterDTOCopyWithImpl<$Res, $Val extends ClusterDTO>
    implements $ClusterDTOCopyWith<$Res> {
  _$ClusterDTOCopyWithImpl(this._value, this._then);

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
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDTO>,
      knowledge: freezed == knowledge
          ? _value.knowledge
          : knowledge // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClusterDTOCopyWith<$Res>
    implements $ClusterDTOCopyWith<$Res> {
  factory _$$_ClusterDTOCopyWith(
          _$_ClusterDTO value, $Res Function(_$_ClusterDTO) then) =
      __$$_ClusterDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String goal,
      List<TaskDTO> tasks,
      String? knowledge,
      int? id,
      String? uid});
}

/// @nodoc
class __$$_ClusterDTOCopyWithImpl<$Res>
    extends _$ClusterDTOCopyWithImpl<$Res, _$_ClusterDTO>
    implements _$$_ClusterDTOCopyWith<$Res> {
  __$$_ClusterDTOCopyWithImpl(
      _$_ClusterDTO _value, $Res Function(_$_ClusterDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? goal = null,
    Object? tasks = null,
    Object? knowledge = freezed,
    Object? id = freezed,
    Object? uid = freezed,
  }) {
    return _then(_$_ClusterDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDTO>,
      knowledge: freezed == knowledge
          ? _value.knowledge
          : knowledge // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClusterDTO implements _ClusterDTO {
  _$_ClusterDTO(
      {required this.name,
      required this.goal,
      required final List<TaskDTO> tasks,
      this.knowledge,
      this.id,
      this.uid})
      : _tasks = tasks;

  factory _$_ClusterDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClusterDTOFromJson(json);

  @override
  final String name;
  @override
  final String goal;
  final List<TaskDTO> _tasks;
  @override
  List<TaskDTO> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final String? knowledge;
  @override
  final int? id;
  @override
  final String? uid;

  @override
  String toString() {
    return 'ClusterDTO(name: $name, goal: $goal, tasks: $tasks, knowledge: $knowledge, id: $id, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClusterDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.knowledge, knowledge) ||
                other.knowledge == knowledge) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, goal,
      const DeepCollectionEquality().hash(_tasks), knowledge, id, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClusterDTOCopyWith<_$_ClusterDTO> get copyWith =>
      __$$_ClusterDTOCopyWithImpl<_$_ClusterDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClusterDTOToJson(
      this,
    );
  }
}

abstract class _ClusterDTO implements ClusterDTO {
  factory _ClusterDTO(
      {required final String name,
      required final String goal,
      required final List<TaskDTO> tasks,
      final String? knowledge,
      final int? id,
      final String? uid}) = _$_ClusterDTO;

  factory _ClusterDTO.fromJson(Map<String, dynamic> json) =
      _$_ClusterDTO.fromJson;

  @override
  String get name;
  @override
  String get goal;
  @override
  List<TaskDTO> get tasks;
  @override
  String? get knowledge;
  @override
  int? get id;
  @override
  String? get uid;
  @override
  @JsonKey(ignore: true)
  _$$_ClusterDTOCopyWith<_$_ClusterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
