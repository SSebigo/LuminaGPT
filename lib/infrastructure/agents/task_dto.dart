import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/task.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_task.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

/// @nodoc
@freezed
class TaskDTO with _$TaskDTO {
  /// @nodoc
  factory TaskDTO({
    required String name,
    required String description,
    required String role,
    required String goal,
    required bool done,
    required DateTime createdAt,
    String? result,
    int? id,
    int? parentId,
  }) = _TaskDTO;

  /// @nodoc
  factory TaskDTO.fromDomain(Task task) {
    return TaskDTO(
      name: task.name.getOrCrash(),
      description: task.description.getOrCrash(),
      role: task.role.getOrCrash(),
      goal: task.goal.getOrCrash(),
      done: task.done,
      createdAt: task.createdAt,
      result: task.result?.getOrCrash(),
      id: task.id,
      parentId: task.parentId,
    );
  }

  /// @nodoc
  factory TaskDTO.fromAdapter(IsarTask task) {
    return TaskDTO(
      name: task.name,
      description: task.description,
      role: task.role,
      goal: task.goal,
      done: task.done,
      createdAt: task.createdAt,
      result: task.result,
      id: task.id,
      parentId: task.parentId,
    );
  }

  /// @nodoc
  factory TaskDTO.fromJson(Map<String, dynamic>? json) =>
      _$TaskDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension TaskDTOX on TaskDTO {
  /// @nodoc
  Task toDomain() => Task(
        name: Label(name),
        description: Label(description),
        role: Label(role),
        goal: Label(goal),
        done: done,
        createdAt: createdAt,
        result: result != null ? Label(result!) : null,
        id: id,
        parentId: parentId,
      );

  /// @nodoc
  IsarTask toAdapter() => IsarTask(
        name: name,
        description: description,
        role: role,
        goal: goal,
        done: done,
        createdAt: createdAt,
        result: result,
        id: id,
        parentId: parentId,
      );
}
