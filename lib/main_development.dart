import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/flavors.dart';
import 'package:lumina_gpt/injection.dart';
import 'package:lumina_gpt/presentation/core/app_development.dart';
import 'package:lumina_gpt/simple_bloc_observer.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  F.appFlavor = Flavor.development;

  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  await configureInjection(Environment.dev);

  Bloc.observer = SimpleBlocObserver();

  const windowOptions = WindowOptions(
    size: Size(1280, 720),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    title: 'LuminaGPT Dev',
  );

  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(AppDevelopment());
}
