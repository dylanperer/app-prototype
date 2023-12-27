import 'package:app/screens/app_screen_wrapper.dart';
import 'package:app/screens/authentication/app_sign_in_screen.dart';
import 'package:app/screens/authentication/app_sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String signInRoute = '/';
  static const String signUpRoute = '/sign-up';

  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final _navigatorSignInKey = GlobalKey<NavigatorState>();
  static final _navigatorSignUpKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
      initialLocation: signInRoute,
      navigatorKey: _navigatorKey,
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return AppScreenWrapper(
                navigationShell: navigationShell,
              );
            },
            branches: [
              StatefulShellBranch(navigatorKey: _navigatorSignInKey, routes: [
                GoRoute(
                    path: signInRoute,
                    builder: (context, state) {
                      return SignInScreen(
                        key: state.pageKey,
                      );
                    })
              ]),
              StatefulShellBranch(navigatorKey: _navigatorSignUpKey, routes: [
                GoRoute(
                    path: signUpRoute,
                    builder: (context, state) {
                      return SignUpScreen(
                        key: state.pageKey,
                      );
                    })
              ])
            ])
      ]);
}
