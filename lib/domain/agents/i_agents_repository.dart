import 'package:lumina_gpt/domain/agents/agent.dart';
import 'package:lumina_gpt/domain/agents/agents_failure.dart';
import 'package:lumina_gpt/domain/agents/task.dart';
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
  Future<Result<Agent, AgentsFailure>> startGoal(Label name, Label goal);

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
