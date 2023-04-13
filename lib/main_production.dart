import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/flavors.dart';
import 'package:lumina_gpt/injection.dart';
import 'package:lumina_gpt/presentation/core/app_production.dart';

Future<void> main() async {
  F.appFlavor = Flavor.production;

  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);

  runApp(AppProduction());
}
