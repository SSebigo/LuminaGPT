import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/core/label.dart';

part 'task.freezed.dart';

/// @nodoc
@freezed
class Task with _$Task {
  /// @nodoc
  factory Task({
    required Label name,
    required Label description,
    required Label role,
    required Label goal,
    required bool done,
    required DateTime createdAt,
    Label? result,
    int? id,
    int? parentId,
  }) = _Task;

  /// @nodoc
  factory Task.empty() => Task(
        name: Label(''),
        description: Label(''),
        role: Label(''),
        goal: Label(''),
        done: false,
        createdAt: DateTime.now(),
      );
}
