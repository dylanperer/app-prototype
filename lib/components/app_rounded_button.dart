import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class AppRoundedButton extends StatelessWidget {
  const AppRoundedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
        child: Container(
            decoration: const BoxDecoration(
                color: AppColors.main_500,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppSpacing.space_80))),
            width: AppSpacing.space_80,
            height: AppSpacing.space_80,
            child: const Icon(
              Icons.chevron_right_rounded,
              size: AppSpacing.space_64,
              color: AppColors.neutral_100,
            )));
  }
}
