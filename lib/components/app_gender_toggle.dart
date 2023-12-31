import 'package:app/components/app_touchable_opacity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

class AppGenderToggle extends StatefulWidget {
  const AppGenderToggle({super.key});

  @override
  State<AppGenderToggle> createState() => _AppGenderToggleState();
}

class _AppGenderToggleState extends State<AppGenderToggle> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
        print(_isToggled);
      },
      child: RepaintBoundary(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: AppSpacing.space_64,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: AppColors.stone_350,
                      width: 1,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppSpacing.space_56))),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: AppSpacing.space_64,
                  decoration: const BoxDecoration(
                      color: AppColors.main_500,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppSpacing.space_64))),
                ).animate(target: _isToggled ? 100 : 0).moveX(
                    end: 100, duration: 320.ms, curve: Curves.easeInOutSine),
                AnimatedSwitcher(
                    duration: 320.ms,
                    child: Icon(
                      key: ValueKey(_isToggled),
                      Icons.female_rounded,
                      color: _isToggled
                          ? AppColors.main_500
                          : AppColors.neutral_100,
                      size: 32,
                    )),
              ],
            ),
            Positioned(
              left: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedSwitcher(
                      duration: 320.ms,
                      child: Icon(
                        key: ValueKey(_isToggled),
                        Icons.male_rounded,
                        color: _isToggled
                            ? AppColors.neutral_100
                            : AppColors.main_500,
                        size: 32,
                      )),
                  Container(
                    width: 100,
                    height: AppSpacing.space_64,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppSpacing.space_64))),
                  ).animate(target: _isToggled ? 100 : 0).moveX(
                      end: -100, duration: 320.ms, curve: Curves.easeInOutSine),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
