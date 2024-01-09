import 'package:app/components/app_interactive_label.dart';
import 'package:app/utils/helpers/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../components/app_info_text.dart';
import '../../../components/app_onboarding_gender_toggle.dart';
import '../../../components/app_text.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class GenderScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;

  const GenderScreen({super.key, required this.onBoardSettings});

  void _showMoreOptions(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppSpacing.space_32))),
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_20, horizontal: 0),
          child: DraggableScrollableSheet(
            expand: false,
            builder: (_, controller) {
              return ListView.builder(
                controller: controller,
                itemBuilder: (_, i) => ListTile(title: Text('Item $i')),
              );
            },
          ),
        );
      },
    );
  }

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
              AppText(
                text: 'Which gender do you identify with?',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              AppInfo(text: 'Tap \'More options\' for additional genders.')
            ],
          ),
          Column(
            children: [
              AppOnboardingGenderToggle(
                  isDefaultChecked: onBoardSettings.gender == 'M',
                  onToggle: (isToggled) {
                    if (isToggled) {
                      onBoardSettings.gender = 'M';
                    } else {
                      onBoardSettings.gender = 'F';
                    }
                  }),
              const Gap(AppSpacing.space_20),
              AppInteractiveLabel(
                text: 'More options',
                onTap: () {
                  AppUi.openBottomSheet(BottomSheetConfiguration(context: context, items: [], snapPoints: AppUi.defaultBottomSheetSnapPoints));
                },
              )
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
