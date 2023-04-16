import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_model.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_task.dart';

part 'isar_agent.g.dart';

/// @nodoc
@Collection(accessor: 'agents', inheritance: false)
class IsarAgent extends Equatable {
  /// @nodoc
  IsarAgent({
    required this.name,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  final Id? id;

  /// @nodoc
  final String name;

  /// @nodoc
  final model = IsarLink<IsarModel>();

  /// @nodoc
  final tasks = IsarLinks<IsarTask>();

  /// @nodoc
  IsarAgent copyWith({
    String? name,
    Id? id,
  }) {
    return IsarAgent(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
