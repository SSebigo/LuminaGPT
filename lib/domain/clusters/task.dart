import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/core/label.dart';

part 'task.freezed.dart';

/// @nodoc
@freezed
class Task with _$Task {
  /// @nodoc
  factory Task({
    required Label description,
    required bool done,
    required DateTime createdAt,
    Label? result,
    int? id,
    int? priority,
    DateTime? updatedAt,
  }) = _Task;

  /// @nodoc
  factory Task.empty() => Task(
        description: Label(''),
        done: false,
        createdAt: DateTime.now(),
      );
}
