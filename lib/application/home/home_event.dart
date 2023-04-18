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
  const factory HomeEvent.settingsNotFound() = SettingsNotFound;

  /// @nodoc
  const factory HomeEvent.apiKeyChanged(String apiKeyStr) = ApiKeyChanged;

  /// @nodoc
  const factory HomeEvent.apiKeySubmitted() = ApiKeySubmitted;

  /// @nodoc
  const factory HomeEvent.apiKeyUpdated() = _ApiKeyUpdated;

  /// @nodoc
  const factory HomeEvent.clientInitialized() = _ClientInitialized;

  /// @nodoc
  const factory HomeEvent.agentNameChanged(String nameStr) = AgentNameChanged;

  /// @nodoc
  const factory HomeEvent.clusterNameChanged(String nameStr) =
      ClusterNameChanged;

  /// @nodoc
  const factory HomeEvent.clusterGoalChanged(String goalStr) =
      ClusterGoalChanged;

  /// @nodoc
  const factory HomeEvent.deployPressed() = DeployPressed;

  /// @nodoc
  const factory HomeEvent.agentDeployed() = _AgentDeployed;

  /// @nodoc
  const factory HomeEvent.agentInserted(List<Task> tasks) = _AgentInserted;

  /// @nodoc
  const factory HomeEvent.tasksCreated(List<Task> tasks) = _TasksCreated;

  /// @nodoc
  const factory HomeEvent.taskExecuted(Agent agent) = _TaskExecuted;

  /// @nodoc
  const factory HomeEvent.maxTasksReached() = _MaxTasksReached;

  /// @nodoc
  const factory HomeEvent.noTasksAdded() = _NoTasksAdded;

  /// @nodoc
  const factory HomeEvent.agentPressed(Agent agent) = AgentPressed;

  /// @nodoc
  const factory HomeEvent.clusterPressed(Cluster cluster) = ClusterPressed;

  /// @nodoc
  const factory HomeEvent.viewPressed(View view) = ViewPressed;
}
