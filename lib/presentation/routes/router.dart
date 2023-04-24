import 'package:auto_route/auto_route.dart';
import 'package:lumina_gpt/presentation/routes/router.gr.dart';
import 'package:lumina_gpt/utils/constants/paths/router.dart';

/// @nodoc
@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  /// @nodoc
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: homePagePath,
        ),
      ];
}
