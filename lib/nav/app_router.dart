import 'package:app/components/bottom-navigator/bottom-navigator_component.dart';
import 'package:app/screens/discover/discover_component.dart';
import 'package:app/screens/matches/matches_component.dart';
import 'package:app/screens/messaging/messaging_component.dart';
import 'package:app/screens/onboard/common/onboarding/onboarding_screen.dart';
import 'package:app/screens/settings/settings_component.dart';
import 'package:app/screens/sign-in/sign-in_component.dart';
import 'package:app/screens/sign-up/sign-up_component.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { signIn, signUp, onboarding, discover, matches, messaging, profile }

class AppRouter {
  AppRouter._();

  static const String _signInRoute = '/';
  static const String _signUpRoute = '/signup';
  static const String _onboardingRoute = '/onboarding';

  static const String _app = '/app';
  static const String _discover = 'discover';
  static const String _messaging = 'messaging';
  static const String _profile = 'profile';
  static const String _matches = 'matches';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _appNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

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
      case AppRoute.profile:
        return '$_app/$_profile';
      case AppRoute.matches:
        return '$_app/$_matches';
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
              return pageTransition(state.pageKey, const SignInComponent());
            }),
        GoRoute(
            path: _signUpRoute,
            pageBuilder: (context, state) {
              return pageTransition(state.pageKey, const SignUpComponent());
            }),
        GoRoute(
            path: _onboardingRoute,
            pageBuilder: (context, state) {
              return pageTransition(state.pageKey, OnboardingScreen());
            }),
        GoRoute(
            path: _app,
            redirect: (context, state) => '$_app/$_discover',
            routes: [
              StatefulShellRoute.indexedStack(
                  builder: (context, state, navigationShell) {
                    return BottomNavigatorComponent(navigationShell: navigationShell);
                  },
                  branches: [
                    StatefulShellBranch(navigatorKey: _appNavKey, routes: [
                      GoRoute(
                          path: _discover,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const DiscoverComponent());
                          }),
                      GoRoute(
                          path: _matches,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const MatchesComponent());
                          }),
                      GoRoute(
                          path: _messaging,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const MessagingComponent());
                          }),
                      GoRoute(
                          path: _profile,
                          pageBuilder: (context, state) {
                            return pageTransition(
                                state.pageKey, const SettingsComponent());
                          })
                    ])
                  ])
            ])
      ]);
}
