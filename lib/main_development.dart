import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/flavors.dart';
import 'package:lumina_gpt/injection.dart';
import 'package:lumina_gpt/presentation/core/app_development.dart';
import 'package:lumina_gpt/simple_bloc_observer.dart';

Future<void> main() async {
  F.appFlavor = Flavor.development;

  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.dev);

  Bloc.observer = SimpleBlocObserver();

  runApp(AppDevelopment());
}
