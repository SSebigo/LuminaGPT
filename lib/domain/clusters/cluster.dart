import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:lumina_gpt/domain/core/label.dart';

part 'cluster.freezed.dart';

/// @nodoc
@freezed
class Cluster with _$Cluster {
  /// @nodoc
  factory Cluster({
    required Label name,
    required Label goal,
    required List<Task> tasks,
    Label? knowledge,
    int? id,
  }) = _Cluster;

  /// @nodoc
  factory Cluster.empty() => Cluster(
        name: Label(''),
        goal: Label(''),
        tasks: [],
      );
}
