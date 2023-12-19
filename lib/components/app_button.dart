import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import 'app_touchable_opacity.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: AppSpacing.space_6),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.space_56)),
            boxShadow: [
              BoxShadow(offset: Offset(0, 0), spreadRadius: -14, color: Colors.black, blurRadius: 16)
            ]),
        child: Container(
            constraints:
                const BoxConstraints.expand(height: AppSpacing.space_64),
            decoration: const BoxDecoration(
                color: AppColors.main_500,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppSpacing.space_56))),
            child: const Align(
              child: AppText(
                text: 'Sign in',
                size: AppSpacing.space_18,
                color: AppColors.neutral_100,
                fontWeight: FontWeight.w800,
              ),
            )),
      ),
    );
  }
}
