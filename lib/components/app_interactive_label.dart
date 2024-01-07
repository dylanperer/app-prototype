import 'package:app/components/app_text.dart';
import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class AppInteractiveLabel extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const AppInteractiveLabel({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_8,
            ),
            color: Colors.transparent,
            child: AppText(
              text: text,
              color: AppColors.main_400,
              fontWeight: FontWeight.w800,
            )));
  }
}
