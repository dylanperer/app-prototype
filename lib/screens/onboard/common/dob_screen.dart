import 'package:app/components/onboarding/app_onboarding_date_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../components/app_text.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class DobScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;

  const DobScreen({super.key, required this.onBoardSettings});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const AppText(
          text: 'When was your birthday?',
          textAlign: TextAlign.center,
          size: AppSpacing.space_24,
          fontWeight: FontWeight.w800,
        ),
        Align(
            alignment: Alignment.center,
            child: AppOnboardingDateSelector(
              defaultDate: onBoardSettings.dob,
              onDateSelected: (DateTime date) {
                onBoardSettings.dob = date;
                print(onBoardSettings.dob);
              },
            )),
        const SizedBox(
          width: AppSpacing.space_80,
          height: AppSpacing.space_80,
        )
      ],
    );
  }
}
