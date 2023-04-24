import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import 'package:lumina_gpt/domain/settings/i_settings_repository.dart';
import 'package:lumina_gpt/domain/settings/settings.dart';
import 'package:lumina_gpt/domain/settings/settings_failure.dart';
import 'package:lumina_gpt/infrastructure/settings/isar_settings.dart';
import 'package:lumina_gpt/infrastructure/settings/settings_dto.dart';
import 'package:oxidized/oxidized.dart';

/// @nodoc
@LazySingleton(
  as: ISettingsRepository,
  env: [Environment.dev, Environment.prod],
)
class SettingsRepository implements ISettingsRepository {
  /// @nodoc
  SettingsRepository(this._isar);

  final Isar _isar;

  @override
  Future<Result<Unit, SettingsFailure>> deleteSettings() async {
    try {
      return _isar.writeTxn(() async {
        final isDeleted = await _isar.settings.delete(0);

        if (isDeleted) {
          return const Ok(unit);
        }
        return const Err(SettingsFailure.settingsNotDeleted());
      });
    } catch (e) {
      return const Err(SettingsFailure.settingsNotDeleted());
    }
  }

  @override
  Future<Result<Settings, SettingsFailure>> fetchSettings() async {
    try {
      final isarSettings = await _isar.settings.get(0);

      if (isarSettings == null) {
        return const Err(SettingsFailure.settingsNotFound());
      }

      if (isarSettings.apiKey == null || isarSettings.apiKey!.isEmpty) {
        return const Err(SettingsFailure.apiKeyNotFound());
      }

      final settings = SettingsDTO.fromAdapter(isarSettings).toDomain();

      return Ok(settings);
    } catch (e) {
      return const Err(SettingsFailure.settingsNotFound());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> initializeSettings() async {
    try {
      return _isar.writeTxn(() async {
        final settings = await _isar.settings.get(0);

        if (settings == null) {
          await _isar.settings.put(
            SettingsDTO.fromDomain(
              Settings.empty(),
            ).toAdapter().copyWith(id: 0),
          );
        }

        return const Ok(unit);
      });
    } catch (e) {
      return const Err(SettingsFailure.settingsNotInitialized());
    }
  }

  @override
  Future<Result<Unit, SettingsFailure>> updateSettings(
    Settings settings,
  ) async {
    try {
      var isarSettings = await _isar.settings.get(0);

      if (isarSettings == null) {
        return const Err(SettingsFailure.settingsNotFound());
      }

      final settingsAdapter = SettingsDTO.fromDomain(settings)
          .toAdapter()
          .copyWith(id: isarSettings.id);

      await _isar.writeTxn(() async {
        await _isar.settings.put(settingsAdapter);
      });

      isarSettings = await _isar.settings.get(0);

      if (isarSettings != null && isarSettings == settingsAdapter) {
        return const Ok(unit);
      }
      return const Err(SettingsFailure.settingsNotUpdated());
    } catch (e) {
      return const Err(SettingsFailure.settingsNotUpdated());
    }
  }
}
