import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'isar_task.g.dart';

/// @nodoc
@Collection(accessor: 'tasks', inheritance: false)
class IsarTask extends Equatable {
  /// @nodoc
  IsarTask({
    required this.name,
    required this.description,
    required this.goal,
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
  final String name;

  /// @nodoc
  final String description;

  /// @nodoc
  final String goal;

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
    String? name,
    String? description,
    String? goal,
    bool? done,
    DateTime? createdAt,
    String? result,
    int? priority,
    DateTime? updatedAt,
  }) {
    return IsarTask(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      goal: goal ?? this.goal,
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
