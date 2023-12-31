import 'dart:math';

import 'package:app/components/app_gender_toggle.dart';
import 'package:app/components/app_rounded_button.dart';
import 'package:app/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../components/app_text.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class GenderScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;

  const GenderScreen({super.key, required this.onBoardSettings});

  @override
  Widget build(BuildContext context) {
    return const Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppText(
          text: 'What gender do you identify with?',
          textAlign: TextAlign.center,
          size: AppSpacing.space_24,
          fontWeight: FontWeight.w800,
        ),
        AppGenderToggle(),
        SizedBox(width: AppSpacing.space_80, height: AppSpacing.space_80,)
      ],
    );
  }
}
