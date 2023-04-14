import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lumina_gpt/domain/sessions/session.dart';
import 'package:lumina_gpt/infrastructure/sessions/isar_session.dart';

part 'session_dto.freezed.dart';
part 'session_dto.g.dart';

/// @nodoc
@freezed
class SessionDTO with _$SessionDTO {
  /// @nodoc
  factory SessionDTO({
    required String name,
    required String model,
    required double temperature,
  }) = _SessionDTO;

  /// @nodoc
  factory SessionDTO.fromDomain(Session session) {
    return SessionDTO(
      name: session.name,
      model: session.model,
      temperature: session.temperature,
    );
  }

  /// @nodoc
  factory SessionDTO.fromAdapter(IsarSession sessions) {
    return SessionDTO(
      name: sessions.name,
      model: sessions.model,
      temperature: sessions.temperature,
    );
  }

  /// @nodoc
  factory SessionDTO.fromJson(Map<String, dynamic>? json) =>
      _$SessionDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension SessionDTOX on SessionDTO {
  /// @nodoc
  Session toDomain() => Session(
        name: name,
        model: model,
        temperature: temperature,
      );

  /// @nodoc
  IsarSession toAdapter() => IsarSession(
        name: name,
        model: model,
        temperature: temperature,
      );
}

/// @nodoc
extension SessionMapX on Map<dynamic, dynamic> {
  /// @nodoc
  Session toDomain() => Session(
        name: this['name'] as String,
        model: this['model'] as String,
        temperature: this['temperature'] as double,
      );
}
