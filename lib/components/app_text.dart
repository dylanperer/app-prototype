import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppText extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppText({super.key, this.text, this.size, this.fontWeight, this.color, this.textAlign, this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return Text(text ?? '',
        textAlign: textAlign,
        overflow: textOverflow,
        style: TextStyle(
            color: color ?? AppColors.stone_600,
            fontSize: size ?? AppSpacing.space_16_5,
            fontWeight: fontWeight ?? FontWeight.w400));
  }
}
