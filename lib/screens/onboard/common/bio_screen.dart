import 'package:app/components/app_error.dart';
import 'package:app/components/app_info_text.dart';
import 'package:app/components/app_onboarding_date_selector.dart';
import 'package:app/components/app_text_area.dart';
import 'package:app/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../components/app_text.dart';
import '../../../components/app_touchable_opacity.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class BioScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;

  const BioScreen({super.key, required this.onBoardSettings, this.error});

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
                text: 'Introduce yourself.',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              AppInfo(
                text:
                    "Let everyone know why you're here and what you're looking for.",
              )
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  AppTextArea(),
                  AppError(error: error)
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
