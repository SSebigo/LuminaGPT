import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';
import 'package:lumina_gpt/domain/core/label.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_cluster.dart';
import 'package:lumina_gpt/infrastructure/clusters/task_dto.dart';

part 'cluster_dto.freezed.dart';
part 'cluster_dto.g.dart';

/// @nodoc
@freezed
class ClusterDTO with _$ClusterDTO {
  /// @nodoc
  factory ClusterDTO({
    required String name,
    required String goal,
    required List<TaskDTO> tasks,
    String? knowledge,
    int? id,
  }) = _ClusterDTO;

  /// @nodoc
  factory ClusterDTO.fromDomain(Cluster cluster) {
    return ClusterDTO(
      name: cluster.name.getOrCrash(),
      goal: cluster.goal.getOrCrash(),
      knowledge: cluster.knowledge?.getOrCrash(),
      tasks: cluster.tasks.map(TaskDTO.fromDomain).toList(),
      id: cluster.id,
    );
  }

  /// @nodoc
  factory ClusterDTO.fromAdapter(IsarCluster cluster) {
    return ClusterDTO(
      name: cluster.name,
      goal: cluster.goal,
      knowledge: cluster.knowledge,
      tasks: cluster.tasks.map(TaskDTO.fromAdapter).toList(),
      id: cluster.id,
    );
  }

  /// @nodoc
  factory ClusterDTO.fromJson(Map<String, dynamic>? json) =>
      _$ClusterDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension ClusterDTOX on ClusterDTO {
  /// @nodoc
  Cluster toDomain() => Cluster(
        name: Label(name),
        goal: Label(goal),
        knowledge: knowledge != null ? Label(knowledge!) : null,
        tasks: tasks.map((task) => task.toDomain()).toList(),
        id: id,
      );

  /// @nodoc
  IsarCluster toAdapter() => IsarCluster(
        name: name,
        goal: goal,
        knowledge: knowledge,
        id: id,
      )..tasks.addAll(
          tasks.map((task) => task.toAdapter()).toList(),
        );
}
