import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lumina_gpt/presentation/home/home_layout.dart';

/// @nodoc
@RoutePage()
class HomePage extends StatelessWidget {
  /// @nodoc
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // TODO(SSebigo): replace this for BlocProvider
    return const SafeArea(child: HomeLayout());
  }
}
