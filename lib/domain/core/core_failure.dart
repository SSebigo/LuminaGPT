import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/sessions/sessions_failure.dart';
import 'package:lumina_gpt/domain/settings/settings_failure.dart';

part 'core_failure.freezed.dart';

/// @nodoc
@freezed
class CoreFailure with _$CoreFailure {
  /// @nodoc
  const factory CoreFailure.sessions(SessionsFailure f) = _Sessions;

  /// @nodoc
  const factory CoreFailure.settings(SettingsFailure f) = _Settings;
}
