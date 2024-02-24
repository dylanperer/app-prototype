import 'package:app/components/chat-input/chat-input_component.dart';
import 'package:app/components/safe-area/safe-area_component.dart';
import 'package:app/components/top-navigator/top-navigator_component.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../nav/app_router.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../nav-button/nav-button_component.dart';
part 'bottom-navigator_view.dart';

enum Screen {
  discover,
  favorite,
  messaging,
  profile,
}

class BottomNavigatorComponent extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigatorComponent({super.key, required this.navigationShell});

  @override
  State<BottomNavigatorComponent> createState() => _BottomNavigatorComponentState();
}

class _BottomNavigatorComponentState extends State<BottomNavigatorComponent> {
  late Screen _currentScreen;
  bool _showBottomNav = true;

  @override
  void initState() {
    super.initState();
    _currentScreen = Screen.discover;
  }

  void _onTap(Screen screen) {
    if (screen == _currentScreen) return;

    setState(() {
      _currentScreen = screen;
    });

    switch (screen) {
      case Screen.discover:
        context.go(AppRouter.route(AppRoute.discover));
        break;
      case Screen.favorite:
        context.go(AppRouter.route(AppRoute.matches));
        break;
      case Screen.messaging:

        context.go(AppRouter.route(AppRoute.messaging));
        break;
      case Screen.profile:
        context.go(AppRouter.route(AppRoute.profile));
        break;
    }

    setState(() {
      _showBottomNav = screen != Screen.messaging;
    });
  }

  void _onInputFocus(bool c) {
  }

  @override
  Widget build(BuildContext context) {
    return _bottomNavigatorView(widget, this, context);
  }
}
