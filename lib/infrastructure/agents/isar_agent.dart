import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'isar_agent.g.dart';

/// @nodoc
@Collection(accessor: 'agents', inheritance: false)
class IsarAgent extends Equatable {
  /// @nodoc
  const IsarAgent({
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
