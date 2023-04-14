import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/settings/api_key.dart';

part 'settings.freezed.dart';

/// @nodoc
@freezed
class Settings with _$Settings {
  /// @nodoc
  factory Settings({
    required ApiKey apiKey,
  }) = _Settings;

  /// @nodoc
  factory Settings.empty() => Settings(
        apiKey: ApiKey(''),
      );
}
