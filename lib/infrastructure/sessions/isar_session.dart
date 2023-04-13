import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'isar_session.g.dart';

/// @nodoc
@Collection(accessor: 'sessions', inheritance: false)
class IsarSession extends Equatable {
  /// @nodoc
  const IsarSession({
    this.id = Isar.autoIncrement,
  });

  /// @nodoc
  final Id? id;

  @override
  @ignore
  List<Object?> get props => [id];

  @override
  bool get stringify => true;
}
