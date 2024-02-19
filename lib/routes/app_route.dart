import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/authentication/presentation/screens/login_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {


  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),

      ];
}
