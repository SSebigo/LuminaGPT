import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/core/label.dart';

part 'settings.freezed.dart';

/// @nodoc
@freezed
class Settings with _$Settings {
  /// @nodoc
  factory Settings({
    required Label apiKey,
  }) = _Settings;

  /// @nodoc
  factory Settings.empty() => Settings(
        apiKey: Label(''),
      );
}
