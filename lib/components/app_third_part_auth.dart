import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class AppThirdPartAuth extends StatelessWidget {
  final Widget? prefix;
  final Widget? postfix;

  const AppThirdPartAuth({super.key, this.prefix, this.postfix});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        prefix ?? const SizedBox.shrink(),
        const Gap(AppSpacing.space_40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTouchableOpacity(child: SvgPicture.asset('assets/svg/google.svg')),
            AppTouchableOpacity(
                child: SvgPicture.asset('assets/svg/facebook.svg')),
            AppTouchableOpacity(child: SvgPicture.asset('assets/svg/apple.svg')),
          ],
        ),
        const Gap(AppSpacing.space_40),
        postfix ?? const SizedBox.shrink(),
      ],
    );
  }
}
