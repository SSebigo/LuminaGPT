import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/settings/api_key.dart';
import 'package:lumina_gpt/domain/settings/settings.dart';
import 'package:lumina_gpt/infrastructure/settings/isar_settings.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

/// @nodoc
@freezed
class SettingsDTO with _$SettingsDTO {
  /// @nodoc
  factory SettingsDTO({
    required String apiKey,
  }) = _SettingsDTO;

  /// @nodoc
  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      apiKey: settings.apiKey.getOrCrash(),
    );
  }

  /// @nodoc
  factory SettingsDTO.fromAdapter(IsarSettings settings) {
    return SettingsDTO(
      apiKey: settings.apiKey ?? '',
    );
  }

  /// @nodoc
  factory SettingsDTO.fromJson(Map<String, dynamic>? json) =>
      _$SettingsDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension SettingsDTOX on SettingsDTO {
  /// @nodoc
  Settings toDomain() => Settings(
        apiKey: ApiKey(apiKey),
      );

  /// @nodoc
  IsarSettings toAdapter() => IsarSettings(
        apiKey: apiKey,
      );
}

/// @nodoc
extension SettingsMapX on Map<dynamic, dynamic> {
  /// @nodoc
  Settings toDomain() => Settings(
        apiKey: ApiKey(this['apiKey'] as String),
      );
}
