import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_task.dart';

part 'isar_cluster.g.dart';

/// @nodoc
@Collection(accessor: 'clusters', inheritance: false)
class IsarCluster extends Equatable {
  /// @nodoc
  IsarCluster({
    required this.name,
    required this.goal,
    this.knowledge,
    this.knowledgeEmbeddings,
    this.uid,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  Id? id;

  /// @nodoc
  final String name;

  /// @nodoc
  final String goal;

  /// @nodoc
  final String? knowledge;

  /// @nodoc
  final List<double>? knowledgeEmbeddings;

  /// @nodoc
  final String? uid;

  /// @nodoc
  final tasks = IsarLinks<IsarTask>();

  /// @nodoc
  IsarCluster copyWith({
    Id? id,
    String? name,
    String? goal,
    String? knowledge,
    List<double>? knowledgeEmbeddings,
    String? uid,
  }) {
    return IsarCluster(
      id: id ?? this.id,
      name: name ?? this.name,
      goal: goal ?? this.goal,
      knowledge: knowledge ?? this.knowledge,
      knowledgeEmbeddings: knowledgeEmbeddings ?? this.knowledgeEmbeddings,
      uid: uid ?? this.uid,
    );
  }

  @override
  @ignore
  List<Object?> get props => [id, uid];

  @override
  bool get stringify => true;
}
