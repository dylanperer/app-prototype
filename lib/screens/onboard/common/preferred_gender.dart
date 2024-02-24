import 'package:app/components/error/error_component.dart';
import 'package:app/components/info-text/info-text_component.dart';
import 'package:app/components/radio-button-group/radio-button-group_component.dart';
import 'package:app/components/text/text_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class PreferredGender extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final Function(String? value)? onPreferredGenderChange;
  final String? error;

  const PreferredGender(
      {super.key,
      required this.onBoardSettings,
      this.error,
      this.onPreferredGenderChange});

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
                text: 'Who do you want to be shown to?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              InfoTextComponent(
                text: 'You can further customise this in the profile section.',
              )
            ],
          ),
          Column(
            children: [
              RadioButtonGroupComponent(
                defaultItemId: onBoardSettings.preferredGender,
                items: const {
                  'men': 'Men.',
                  'women': 'Women.',
                  'both': 'Both men and women.',
                },
                onChange: (id) {
                  if (onPreferredGenderChange != null) {
                    onPreferredGenderChange!(id);
                  }
                  onBoardSettings.preferredGender = id;
                },
              ),
              ErrorComponent(error: error)
            ],
          ),
          const SizedBox(
            width: AppSpacing.space_80,
            height: AppSpacing.space_80,
          )
        ],
      ),
    );
  }
}
