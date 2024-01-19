import 'package:app/components/app_safe_area.dart';
import 'package:app/nav/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomTabMenu extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const BottomTabMenu({super.key, required this.navigationShell});

  @override
  State<BottomTabMenu> createState() => _BottomTabMenuState();
}

enum Screens {
  discover,
  messaging,
  settings,
}

class _BottomTabMenuState extends State<BottomTabMenu> {
  int _currentScreenIndex = 0;

  void _onTap(Screens screen) {
    switch (screen) {
      case Screens.discover:
        context.go(AppRouter.route(AppRoute.discover));
        break;
      case Screens.messaging:
        context.go(AppRouter.route(AppRoute.messaging));
        break;
      case Screens.settings:
        context.go(AppRouter.route(AppRoute.settings));
        break;
    }

    setState(() {
      _currentScreenIndex = screen.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentScreenIndex,
          onTap: (value) => _onTap(Screens.values[value]),
          items: const [
            BottomNavigationBarItem(label: 'Discover', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Messaging', icon: Icon(Icons.chat_bubble)),
            BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings)),
          ],
        ),
        child: widget.navigationShell);
  }
}
