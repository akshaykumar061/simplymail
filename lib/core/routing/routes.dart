part of 'route_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Router')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      path: AppRoutes.splashScreen,
      page: SplashScreenRoute.page,
      initial: true,
    ),
  ];
}
