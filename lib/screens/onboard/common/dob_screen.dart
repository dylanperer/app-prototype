import 'package:app/components/error/error_component.dart';
import 'package:app/components/info-text/info-text_component.dart';
import 'package:app/components/onboarding-date-selector/onboarding-date-selector_component.dart';
import 'package:app/components/text/text_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class DobScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;
  const DobScreen({super.key, required this.onBoardSettings, this.error});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              TextComponent(
                text: 'When is your birthday?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              InfoTextComponent(text: 'Please note that this cannot be changed later.',)
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  OnboardingDateSelectorComponent( defaultDate: onBoardSettings.dob,
                    onDateSelected: (DateTime date) {
                      onBoardSettings.dob = date;
                      print(onBoardSettings.dob);
                    },
                  ),
                  ErrorComponent(error: error)
                ],
              )),
          const SizedBox(
            width: AppSpacing.space_80,
            height: AppSpacing.space_80,
          )
        ],
      ),
    );
  }
}
