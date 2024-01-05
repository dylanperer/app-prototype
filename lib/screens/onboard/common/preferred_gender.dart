import 'package:app/components/app_error.dart';
import 'package:app/components/app_info_text.dart';
import 'package:app/components/app_onboarding_date_selector.dart';
import 'package:app/components/app_radio_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../components/app_text.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class PreferredGender extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;

  const PreferredGender({super.key, required this.onBoardSettings, this.error});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              AppText(
                text: 'Who do you want to be shown to?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_21,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              AppInfo(
                text: 'You can further customise this in the profile section.',
              )
            ],
          ),
          AppRadioGroup(
            items: const {
              'men': 'Men.',
              'women': 'Women.',
              'both': 'Both men and women.',
            },
            onChange: (id) => print(id),
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
