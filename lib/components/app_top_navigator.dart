import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppTopNavigator extends StatelessWidget implements PreferredSizeWidget {
  const AppTopNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space_8, vertical: 0),
          constraints: const BoxConstraints.expand(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: AppTouchableOpacity(
                  child: Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(
                      right: AppSpacing.space_16,
                      bottom: AppSpacing.space_16,
                    ),
                    child: const Icon(
                      Icons.arrow_circle_left_rounded,
                      color: AppColors.stone_600,
                      size: AppSpacing.space_48,
                    ),
                  )),
            ),
          ],),
        )
    );
  }

  @override
  @override
  Size get preferredSize => const Size.fromHeight(AppSpacing.space_56);
}
