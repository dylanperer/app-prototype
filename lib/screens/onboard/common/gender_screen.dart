import 'package:app/components/onboarding/app_onboarding_gender_toggle.dart';
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
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const AppText(
          text: 'What gender do you identify with?',
          textAlign: TextAlign.center,
          size: AppSpacing.space_24,
          fontWeight: FontWeight.w800,
        ),
        AppOnboardingGenderToggle(isDefaultChecked: onBoardSettings.gender == 'M', onToggle: (isToggled) {
          if(isToggled){
            onBoardSettings.gender = 'M';
          }else{
            onBoardSettings.gender = 'F';
          }
        }),
        const SizedBox(width: AppSpacing.space_80, height: AppSpacing.space_80,)
      ],
    );
  }
}
