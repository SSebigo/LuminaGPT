import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/model.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';
import 'package:lumina_gpt/domain/core/label.dart';

part 'agent.freezed.dart';

/// @nodoc
@freezed
class Agent with _$Agent {
  /// @nodoc
  factory Agent({
    required Label name,
    required Model completionModel,
    required Model embeddingModel,
    required List<Cluster> clusters,
    int? id,
  }) = _Agent;

  /// @nodoc
  factory Agent.empty() => Agent(
        name: Label(''),
        completionModel: Model.defaultCompletion(),
        embeddingModel: Model.defaultEmbedding(),
        clusters: [],
      );
}
