import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/domain/agents/task.dart';

part 'isar_task.g.dart';

/// @nodoc
@Collection(accessor: 'tasks', inheritance: false)
class IsarTask extends Equatable {
  /// @nodoc
  const IsarTask({
    required this.name,
    required this.description,
    required this.role,
    required this.goal,
    required this.done,
    required this.createdAt,
    this.result,
    this.parentId,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  final Id? id;

  /// @nodoc
  final String name;

  /// @nodoc
  final String description;

  /// @nodoc
  final String role;

  /// @nodoc
  final String goal;

  /// @nodoc
  final bool done;

  /// @nodoc
  final DateTime createdAt;

  /// @nodoc
  final String? result;

  /// @nodoc
  final int? parentId;

  /// @nodoc
  IsarTask copyWith({
    Id? id,
    String? name,
    String? description,
    String? role,
    String? goal,
    bool? done,
    DateTime? createdAt,
    String? result,
    int? parentId,
  }) {
    return IsarTask(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      role: role ?? this.role,
      goal: goal ?? this.goal,
      done: done ?? this.done,
      createdAt: createdAt ?? this.createdAt,
      result: result ?? this.result,
      parentId: parentId ?? this.parentId,
    );
  }

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
