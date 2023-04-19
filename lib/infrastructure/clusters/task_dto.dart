import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_task.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

/// @nodoc
@freezed
class TaskDTO with _$TaskDTO {
  /// @nodoc
  factory TaskDTO({
    required String name,
    required String description,
    required String goal,
    required bool done,
    required DateTime createdAt,
    String? result,
    int? id,
    int? priority,
    DateTime? updatedAt,
  }) = _TaskDTO;

  /// @nodoc
  factory TaskDTO.fromDomain(Task task) {
    return TaskDTO(
      name: task.name.getOrCrash(),
      description: task.description.getOrCrash(),
      goal: task.goal.getOrCrash(),
      done: task.done,
      createdAt: task.createdAt,
      result: task.result?.getOrCrash(),
      id: task.id,
      priority: task.priority,
      updatedAt: task.updatedAt,
    );
  }

  /// @nodoc
  factory TaskDTO.fromAdapter(IsarTask task) {
    return TaskDTO(
      name: task.name,
      description: task.description,
      goal: task.goal,
      done: task.done,
      createdAt: task.createdAt,
      result: task.result,
      id: task.id,
      priority: task.priority,
      updatedAt: task.updatedAt,
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
        goal: Label(goal),
        done: done,
        createdAt: createdAt,
        result: result != null ? Label(result!) : null,
        id: id,
        priority: priority,
        updatedAt: updatedAt,
      );

  /// @nodoc
  IsarTask toAdapter() => IsarTask(
        name: name,
        description: description,
        goal: goal,
        done: done,
        createdAt: createdAt,
        result: result,
        id: id,
        priority: priority,
        updatedAt: updatedAt,
      );
}
