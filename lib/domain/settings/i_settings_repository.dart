import 'package:lumina_gpt/domain/settings/settings.dart';
import 'package:lumina_gpt/domain/settings/settings_failure.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
abstract class ISettingsRepository {
  /// @nodoc
  Future<Result<Unit, SettingsFailure>> deleteSettings();

  /// @nodoc
  Future<Result<Settings, SettingsFailure>> fetchSettings();

  /// @nodoc
  Future<Result<Unit, SettingsFailure>> initializeSettings();

  /// @nodoc
  Future<Result<Unit, SettingsFailure>> updateSettings(Settings settings);
}
