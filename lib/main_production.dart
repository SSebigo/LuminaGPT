import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/flavors.dart';
import 'package:lumina_gpt/injection.dart';
import 'package:lumina_gpt/presentation/core/app_production.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  F.appFlavor = Flavor.production;

  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  await configureInjection(Environment.prod);

  const windowOptions = WindowOptions(
    size: Size(1280, 720),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    title: 'LuminaGPT',
  );

  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(AppProduction());
}
