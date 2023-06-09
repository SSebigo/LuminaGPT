part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeEvent with _$HomeEvent {
  /// @nodoc
  const factory HomeEvent.appLaunched() = AppLaunched;

  /// @nodoc
  const factory HomeEvent.agentNameSubmitted() = AgentNameSubmitted;

  /// @nodoc
  const factory HomeEvent.newClusterPressed() = NewClusterPressed;

  /// @nodoc
  const factory HomeEvent.deleteAgentPressed(Agent agent) = DeleteAgentPressed;

  /// @nodoc
  const factory HomeEvent.agentPressed(Agent agent) = AgentPressed;

  /// @nodoc
  const factory HomeEvent.clusterPressed(Cluster cluster) = ClusterPressed;

  /// @nodoc
  const factory HomeEvent.viewPressed(View view) = ViewPressed;

  /// @nodoc
  const factory HomeEvent.apiKeyChanged(String apiKeyStr) = ApiKeyChanged;

  /// @nodoc
  const factory HomeEvent.apiKeySubmitted() = ApiKeySubmitted;

  /// @nodoc
  const factory HomeEvent.agentNameChanged(String nameStr) = AgentNameChanged;

  /// @nodoc
  const factory HomeEvent.clusterNameChanged(String nameStr) =
      ClusterNameChanged;

  /// @nodoc
  const factory HomeEvent.clusterGoalChanged(String goalStr) =
      ClusterGoalChanged;

  /// @nodoc
  const factory HomeEvent.clusterKnowledgeChanged(String knowledgeStr) =
      ClusterKnowledgeChanged;

  /// @nodoc
  const factory HomeEvent.deployPressed() = DeployPressed;

  /// @nodoc
  const factory HomeEvent.settingsNotFound() = _SettingsNotFound;

  /// @nodoc
  const factory HomeEvent.apiKeyUpdated() = _ApiKeyUpdated;

  /// @nodoc
  const factory HomeEvent.clientInitialized() = _ClientInitialized;

  /// @nodoc
  const factory HomeEvent.knowledgeEmbedded() = _KnowledgeEmbedded;

  /// @nodoc
  const factory HomeEvent.tasksCreated() = _TasksCreated;

  /// @nodoc
  const factory HomeEvent.prioritizeTasks() = _PrioritizeTasks;

  /// @nodoc
  const factory HomeEvent.tasksPrioritized() = _TasksPrioritized;

  /// @nodoc
  const factory HomeEvent.taskDescriptionEmbedded() = _TaskDescriptionEmbedded;

  /// @nodoc
  const factory HomeEvent.taskExecuted() = _TaskExecuted;

  /// @nodoc
  const factory HomeEvent.taskResultEmbedded() = _TaskResultEmbedded;

  /// @nodoc
  const factory HomeEvent.taskCreated() = _TaskCreated;

  /// @nodoc
  const factory HomeEvent.noNewTask() = _NoNewTask;

  /// @nodoc
  const factory HomeEvent.finished() = _Finished;

  /// @nodoc
  const factory HomeEvent.stopPressed() = StopPressed;
}
