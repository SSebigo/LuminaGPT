import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/agents_failure.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
abstract class IAgentsRepository {
  /// @nodoc
  Future<Result<Unit, AgentsFailure>> deleteAgent();

  /// @nodoc
  Future<Result<Agent, AgentsFailure>> fetchAgent();

  /// @nodoc
  Future<Result<List<Agent>, AgentsFailure>> fetchAgents();

  /// @nodoc
  Future<Result<Agent, AgentsFailure>> insertAgent(Agent agent);

  /// @nodoc
  Future<Result<List<Task>, AgentsFailure>> startGoal(
    Agent agent,
    Cluster cluster,
  );

  /// @nodoc
  Future<Result<Cluster, AgentsFailure>> embedKnowledge(
    Agent agent,
    Cluster cluster,
  );

  /// @nodoc
  Future<Result<List<Task>, AgentsFailure>> prioritizeTasks(
    Agent agent,
    Cluster cluster,
    List<Task> tasks, {
    int attempts,
  });

  /// @nodoc
  Future<Result<Task, AgentsFailure>> embedTaskDescription(
    Agent agent,
    Task task,
  );

  /// @nodoc
  Future<Result<Task, AgentsFailure>> executeTask(
    Agent agent,
    Cluster cluster,
    Task task,
  );

  /// @nodoc
  Future<Result<Task, AgentsFailure>> embedTaskResult(
    Agent agent,
    Task task,
  );

  /// @nodoc
  Future<Result<List<Task>, AgentsFailure>> createTasks(
    Agent agent,
    Cluster cluster,
    Task task, {
    int attempts,
  });
}
