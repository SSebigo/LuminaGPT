import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'isar_model.g.dart';

/// @nodoc
@Collection(accessor: 'models', inheritance: false)
class IsarModel extends Equatable {
  /// @nodoc
  IsarModel({
    required this.name,
    this.temperature,
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  Id? id;

  /// @nodoc
  final String name;

  /// @nodoc
  final double? temperature;

  /// @nodoc
  IsarModel copyWith({
    Id? id,
    String? name,
    double? temperature,
  }) {
    return IsarModel(
      id: id ?? this.id,
      name: name ?? this.name,
      temperature: temperature ?? this.temperature,
    );
  }

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
