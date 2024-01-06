import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final Color? color;
  final IconData? icon;

  const AppRoundedButton({super.key, required this.onTap, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
                color: color ?? AppColors.main_500,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSpacing.space_80))),
            width: AppSpacing.space_80,
            height: AppSpacing.space_80,
            child: Icon(
               icon ?? Icons.chevron_right_rounded,
              size: AppSpacing.space_64,
              color: AppColors.neutral_100,
            )));
  }
}
