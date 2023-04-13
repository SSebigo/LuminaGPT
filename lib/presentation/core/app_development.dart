import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumina_gpt/application/home/home_bloc.dart';
import 'package:lumina_gpt/flavor_banner.dart';
import 'package:lumina_gpt/flavors.dart';
import 'package:lumina_gpt/injection.dart';
import 'package:lumina_gpt/presentation/routes/router.dart';
import 'package:lumina_gpt/utils/themes.dart';

/// @nodoc
class AppDevelopment extends StatelessWidget {
  /// @nodoc
  AppDevelopment({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>()..add(const HomeEvent.appLaunched()),
        ),
      ],
      child: MaterialApp.router(
        builder: (_, router) => FlavorBanner(child: router!),
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: lightTheme,
        title: F.title,
      ),
    );
  }
}
