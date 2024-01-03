import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import 'app_text.dart';

class AppInfo extends StatelessWidget {
  final String text;
  const AppInfo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      const Positioned(top: -2, child: Icon(Icons.info_outline_rounded, color: AppColors.stone_350,)),
      Padding(
        padding: const EdgeInsets.only(left: 28),
        child: AppText(
          text: text,
          textAlign: TextAlign.left,
          size: AppSpacing.space_15,
          color: AppColors.stone_600,
        ),
      )
    ]);
  }
}
