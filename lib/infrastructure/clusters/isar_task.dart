import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'isar_task.g.dart';

/// @nodoc
@Collection(accessor: 'tasks', inheritance: false)
class IsarTask extends Equatable {
  /// @nodoc
  IsarTask({
    required this.description,
    required this.done,
    required this.createdAt,
    this.result,
    this.priority,
    this.updatedAt,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  Id? id;

  /// @nodoc
  final String description;

  /// @nodoc
  final bool done;

  /// @nodoc
  final DateTime createdAt;

  /// @nodoc
  final String? result;

  /// @nodoc
  final int? priority;

  /// @nodoc
  final DateTime? updatedAt;

  /// @nodoc
  IsarTask copyWith({
    Id? id,
    String? description,
    bool? done,
    DateTime? createdAt,
    String? result,
    int? priority,
    DateTime? updatedAt,
  }) {
    return IsarTask(
      id: id ?? this.id,
      description: description ?? this.description,
      done: done ?? this.done,
      createdAt: createdAt ?? this.createdAt,
      result: result ?? this.result,
      priority: priority ?? this.priority,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
