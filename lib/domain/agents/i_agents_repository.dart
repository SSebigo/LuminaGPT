import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/agents_failure.dart';
import 'package:lumina_gpt/domain/clusters/cluster.dart';
import 'package:lumina_gpt/domain/clusters/task.dart';
import 'package:lumina_gpt/domain/core/label.dart';
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
  Future<Result<List<Task>, AgentsFailure>> startGoal(Agent agent, Label goal);

  /// @nodoc
  Future<Result<List<Task>, AgentsFailure>> prioritizeTasks(
    Agent agent,
    Cluster cluster,
    List<Task> tasks,
  );

  /// @nodoc
  Future<Result<Task, AgentsFailure>> executeTask(
    Agent agent,
    Cluster cluster,
    Task task,
  );

  /// @nodoc
  Stream<Result<Task, AgentsFailure>> executeTasks(
    Agent agent,
    List<Task> tasks,
    Label goal,
  );

  /// @nodoc
  Stream<Result<List<Task>, AgentsFailure>> createTasks(
    Agent agent,
    List<Task> task,
    Label goal,
  );
}
