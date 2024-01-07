import 'package:app/components/app_error.dart';
import 'package:app/components/app_info_text.dart';
import 'package:app/components/app_onboarding_date_selector.dart';
import 'package:app/components/app_text_area.dart';
import 'package:app/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../components/app_text.dart';
import '../../../components/app_touchable_opacity.dart';
import '../../../theme/app_spacing.dart';
import '../onboarding_screen.dart';

class ProfilePictureScreen extends StatefulWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;

  const ProfilePictureScreen(
      {super.key, required this.onBoardSettings, this.error});

  @override
  State<ProfilePictureScreen> createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
  bool _showFemaleAvatar = true;

  @override
  void didUpdateWidget(covariant ProfilePictureScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      if (widget.onBoardSettings.gender == 'M') {
        _showFemaleAvatar = false;
      } else {
        _showFemaleAvatar = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.space_72, horizontal: 0),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              AppText(
                text: 'Choose your best photo.',
                textAlign: TextAlign.center,
                size: AppSpacing.space_19,
                fontWeight: FontWeight.w800,
              ),
              Gap(AppSpacing.space_4),
              AppInfo(
                text: "You can add more photos in the profile section",
              )
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  AppTouchableOpacity(
                      child: RepaintBoundary(
                    child: SvgPicture.asset(
                      _showFemaleAvatar
                          ? 'assets/svg/female_avatar.svg'
                          : 'assets/svg/male_avatar.svg',
                      height: 200,
                      width: 200,
                    ),
                  )),
                  AppError(error: widget.error)
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
