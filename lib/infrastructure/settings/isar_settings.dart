import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

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

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
