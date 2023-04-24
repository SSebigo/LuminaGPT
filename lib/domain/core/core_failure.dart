import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/agents/agents_failure.dart';
import 'package:lumina_gpt/domain/settings/settings_failure.dart';

part 'core_failure.freezed.dart';

/// @nodoc
@freezed
class CoreFailure with _$CoreFailure {
  /// @nodoc
  const factory CoreFailure.agents(AgentsFailure f) = _Agents;

  /// @nodoc
  const factory CoreFailure.settings(SettingsFailure f) = _Settings;
}
