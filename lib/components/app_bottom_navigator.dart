import 'package:app/components/app_chat_input.dart';
import 'package:app/components/app_safe_area.dart';
import 'package:app/components/app_top_navigator.dart';
import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/components/text/text_component.dart';
import 'package:app/nav/app_router.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

enum Screen {
  discover,
  favorite,
  messaging,
  profile,
}

class AppBottomNavigator extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const AppBottomNavigator({super.key, required this.navigationShell});

  @override
  State<AppBottomNavigator> createState() => _AppBottomNavigatorState();
}

class _AppBottomNavigatorState extends State<AppBottomNavigator> {
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
    return AppSafeArea(
       appBar: const AppTopNavigator(),
        bottomNavigationBar: _showBottomNav ? Container(
          color: AppColors.transparent,
          constraints: const BoxConstraints.expand(height: 125),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space_16, vertical: AppSpacing.space_36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _NavButton(
                  icon: Icons.home_filled,
                  text: 'Discover',
                  onTap: () => _onTap(Screen.discover),
                  isActive: _currentScreen == Screen.discover,
                  fitSize: 1.3,
                ),
                _NavButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                  onTap: () => _onTap(Screen.favorite),
                  isActive: _currentScreen == Screen.favorite,
                  fitSize: 1.4,
                ),
                _NavButton(
                  icon: Icons.chat_bubble,
                  text: 'Messages',
                  onTap: () => _onTap(Screen.messaging),
                  isActive: _currentScreen == Screen.messaging,
                  fitSize: 1.1,
                ),
                _NavButton(
                  icon: Icons.person_2_rounded,
                  text: 'Profile',
                  onTap: () => _onTap(Screen.profile),
                  isActive: _currentScreen == Screen.profile,
                  fitSize: 1.7,
                ),
              ],
            ),
          ),
        ):null,
        bottomSheet: _currentScreen == Screen.messaging
            ? ChatInputField(
                onFocus: _onInputFocus,
              )
            : null,
        child: widget.navigationShell);
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  final bool isActive;
  final double fitSize;

  const _NavButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.onTap,
      required this.isActive,
      required this.fitSize});

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
        onTap: () => onTap(),
        child: Container(
          decoration: BoxDecoration(
              color: isActive ? AppColors.main_500 : AppColors.transparent,
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.max))),
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_16, horizontal: AppSpacing.space_16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (isActive) const Gap(AppSpacing.space_8),
              SizedBox(
                child: TextComponent(
                  fontWeight: FontWeight.w600,
                  text: text,
                  color: Colors.white,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ).animate(target: isActive ? 1 : 0).custom(
                    duration: 320.ms,
                    curve: Curves.easeInOutSine,
                    builder: (context, value, child) {
                      return SizedBox(
                          width: ((value * 100) / fitSize), child: child);
                    },
                  ),
              Icon(
                icon,
                color: isActive ? AppColors.stone_100 : AppColors.main_500,
              ),
            ],
          ),
        ));
  }
}
