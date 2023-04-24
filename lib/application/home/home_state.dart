part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required Option<Result<Unit, CoreFailure>> failureOption,
    required bool thinking,
    required List<Agent> agents,
    required Settings settings,
    required Label agentName,
    required Label clusterName,
    required Label clusterGoal,
    required Label clusterKnowledge,
    required TextEditingController agentNameController,
    required TextEditingController clusterNameController,
    required TextEditingController clusterGoalController,
    required TextEditingController clusterKnowledgeController,
    required TextEditingController apiKeyController,
    required View view,
    required List<Task> tasksQueue,
    Task? nextTask,
    Label? apiKey,
    Agent? agent,
    Cluster? cluster,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => HomeState(
        failureOption: const None(),
        thinking: false,
        agents: [],
        settings: Settings.empty(),
        agentName: Label(''),
        clusterName: Label(''),
        clusterGoal: Label(''),
        clusterKnowledge: Label(''),
        agentNameController: TextEditingController(),
        clusterNameController: TextEditingController(),
        clusterGoalController: TextEditingController(),
        clusterKnowledgeController: TextEditingController(),
        apiKeyController: TextEditingController(),
        view: View.agents,
        tasksQueue: [],
      );
}
