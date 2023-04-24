import 'package:freezed_annotation/freezed_annotation.dart';

part 'agents_failure.freezed.dart';

/// Collection of failures
///
/// [AgentsFailure] is a collection of failures related to the Agent's model
/// and calls to Agent in database.
@freezed
class AgentsFailure with _$AgentsFailure {
  /// @nodoc
  const factory AgentsFailure.noNewTask() = NoNewTask;

  /// @nodoc
  const factory AgentsFailure.unexpected() = Unexpected;
}
