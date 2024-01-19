import 'package:app/screens/app/messaging/messaging_screen.dart';
import 'package:app/screens/app/settings/settings_screen.dart';
import 'package:app/screens/authentication/sign_in_screen.dart';
import 'package:app/screens/authentication/sign_up_screen.dart';
import 'package:app/screens/onboard/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/app/bottom_tab_menu.dart';
import '../screens/app/discover_screen.dart';

enum AppRoute { signIn, signUp, onboarding, discover, messaging, settings }

class AppRouter {
  AppRouter._();

  static const String _signInRoute = '/';
  static const String _signUpRoute = '/signup';
  static const String _onboardingRoute = '/onboarding';

  static const String _app = '/app';
  static const String _discover = 'discover';
  static const String _messaging = 'messaging';
  static const String _settings = 'settings';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _discoverKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell_discover');

  static String route(AppRoute route) {
    switch (route) {
      case AppRoute.signIn:
        return _signInRoute;
      case AppRoute.signUp:
        return _signUpRoute;
      case AppRoute.onboarding:
        return _onboardingRoute;
      case AppRoute.discover:
        return '$_app/$_discover';
      case AppRoute.messaging:
        return '$_app/$_messaging';
      case AppRoute.settings:
        return '$_app/$_settings';
    }
  }

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

  static final GoRouter buildRouter = GoRouter(
      initialLocation: _signInRoute,
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
            path: _signInRoute,
            pageBuilder: (context, state) {
              return pageTransition(state.pageKey, const SignInScreen());
            }),
        GoRoute(
            path: _signUpRoute,
            pageBuilder: (context, state) {
              return pageTransition(state.pageKey, const SignUpScreen());
            }),
        GoRoute(
            path: _onboardingRoute,
            pageBuilder: (context, state) {
              return pageTransition(state.pageKey, OnBoardingScreen());
            }),
        GoRoute(
            path: _app,
            builder: (context, state) => Container(
                  color: Colors.pink,
                ),
            routes: [
              StatefulShellRoute.indexedStack(
                  builder: (context, state, navigationShell) {
                    return BottomTabMenu(navigationShell: navigationShell);
                  },
                  branches: [
                    StatefulShellBranch(navigatorKey: _discoverKey, routes: [
                      GoRoute(
                          path: _discover,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const DiscoverScreen());
                          }),
                      GoRoute(
                          path: _messaging,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const MessagingScreen());
                          }),
                      GoRoute(
                          path: _settings,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const SettingsScreen());
                          })
                    ])
                  ])
            ])
      ]);
}
