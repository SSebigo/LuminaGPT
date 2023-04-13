import 'package:freezed_annotation/freezed_annotation.dart';

part 'agents_failure.freezed.dart';

/// Collection of failures
///
/// [AgentsFailure] is a collection of failures related to the User's model
/// and calls to User in database.
@freezed
class AgentsFailure with _$AgentsFailure {
  /// @nodoc
  const factory AgentsFailure.agentNotDeleted() = AgentNotDeleted;

  /// @nodoc
  const factory AgentsFailure.agentNotFound() = AgentNotFound;

  /// @nodoc
  const factory AgentsFailure.agentNotInserted() = AgentNotInserted;
}
