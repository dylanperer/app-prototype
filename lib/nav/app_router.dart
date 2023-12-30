import 'package:app/screens/authentication/app_sign_in_screen.dart';
import 'package:app/screens/authentication/app_sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String signInRoute = '/';
  static const String signUpRoute = '/sign-up';

  static final GlobalKey<NavigatorState> _safeAreaContainerNavKey =
      GlobalKey<NavigatorState>();

  static CustomTransitionPage pageTransition(LocalKey? localKey, Widget child) {
    return CustomTransitionPage(
      key: localKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 320),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }

  static final GoRouter buildRouter =
      GoRouter(initialLocation: signInRoute, routes: [
    GoRoute(
        path: signInRoute,
        pageBuilder: (context, state) {
          return pageTransition(state.pageKey, const SignInScreen());
        }),
    GoRoute(
        path: signUpRoute,
        pageBuilder: (context, state) {
          return pageTransition(state.pageKey, const SignUpScreen());
        })
  ]);
}
