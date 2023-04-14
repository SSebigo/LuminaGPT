import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart' hide Name;
import 'package:lumina_gpt/domain/sessions/session.dart';

part 'isar_session.g.dart';

/// @nodoc
@Collection(accessor: 'sessions', inheritance: false)
class IsarSession extends Equatable {
  /// @nodoc
  const IsarSession({
    required this.name,
    required this.model,
    required this.temperature,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  final Id? id;

  /// @nodoc
  final String name;

  /// @nodoc
  final String model;

  /// @nodoc
  final double temperature;

  /// @nodoc
  IsarSession copyWith({
    Id? id,
    String? name,
    String? model,
    double? temperature,
  }) {
    return IsarSession(
      id: id ?? this.id,
      name: name ?? this.name,
      model: model ?? this.model,
      temperature: temperature ?? this.temperature,
    );
  }

  /// @nodoc
  Session toDomain() => Session(
        name: name,
        model: model,
        temperature: temperature,
      );

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
