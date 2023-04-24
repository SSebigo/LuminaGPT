import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:lumina_gpt/flavors.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_agent.dart';
import 'package:lumina_gpt/infrastructure/agents/isar_model.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_cluster.dart';
import 'package:lumina_gpt/infrastructure/clusters/isar_task.dart';
import 'package:lumina_gpt/infrastructure/settings/isar_settings.dart';
import 'package:path_provider/path_provider.dart';

/// @nodoc
@module
abstract class IIsarInjectableModule {
  /// Initialize and return an instance of Isar.
  @preResolve
  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @LazySingleton()
  Future<Isar> get isar async {
    final isar = await Isar.open(
      [
        IsarAgentSchema,
        IsarModelSchema,
        IsarSettingsSchema,
        IsarTaskSchema,
        IsarClusterSchema,
      ],
      directory: (await getApplicationSupportDirectory()).path,
      inspector: F.appFlavor == Flavor.development,
    );

    return isar;
  }
}
