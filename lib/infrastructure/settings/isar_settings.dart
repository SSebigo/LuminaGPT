import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/domain/settings/api_key.dart';
import 'package:lumina_gpt/domain/settings/settings.dart';

part 'isar_settings.g.dart';

/// @nodoc
@Collection(accessor: 'settings', inheritance: false)
class IsarSettings extends Equatable {
  /// @nodoc
  const IsarSettings({
    this.apiKey,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  final Id id;

  /// @nodoc
  final String? apiKey;

  /// @nodoc
  IsarSettings copyWith({
    String? apiKey,
    int? id,
  }) {
    return IsarSettings(
      apiKey: apiKey ?? this.apiKey,
      id: id ?? this.id,
    );
  }

  /// @nodoc
  Settings toDomain() {
    return Settings(
      apiKey: ApiKey(apiKey ?? ''),
    );
  }

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
