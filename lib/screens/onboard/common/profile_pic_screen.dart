import 'dart:io';

import 'package:app/components/app_error.dart';
import 'package:app/components/app_info_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/utils/helpers/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

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

class _ProfilePictureScreenState extends State<ProfilePictureScreen> with TickerProviderStateMixin{
  File? _profilePicture;
  bool _showFemaleAvatar = true;
  late AnimationController _animationController = AnimationController(vsync: this, duration: Animate.defaultDuration);

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

  void _onProfilePicturePlaceholderTap() {
    AppUi.openBottomSheet(BottomSheetConfiguration(
        context: context,
        item: SizedBox(
          height: 162,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AppTouchableOpacity(
                // onTap: () async => await _onPickImageFromGallery(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: AppSpacing.space_36,
                      color: AppColors.main_400,
                    ),
                    AppText(
                      text: 'Camera',
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
              AppTouchableOpacity(
                onTap: () async => await _onPickImageFromGallery(),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.photo_library_rounded,
                      size: AppSpacing.space_36,
                      color: AppColors.main_400,
                    ),
                    AppText(
                      text: 'Browse',
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        snapPoints: [0.25]));
  }

  Future _onPickImageFromGallery() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedImage == null) return;

      setState(() {
        _profilePicture = File(pickedImage.path);
      });

      _animationController.reset();
      _animationController.forward();
    } catch (e) {
      var status = await Permission.photos.status;
      if (!status.isGranted) {
        AppUi.openAlertDialog(AlertDialogConfiguration(
            context: context,
            nonDismissible: true,
            title: 'Sorry, permissions not met.',
            content: const AppText(
              text: 'Please grant access to gallery and photos.',
              textAlign: TextAlign.center,
            ),
            primaryButton: AlertDialogButton(
                text: 'Grant permissions', onTap: () => openAppSettings())));
      }
    }
  }

  void _onCamera() {}

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
                      onTap: _onProfilePicturePlaceholderTap,
                      child: _profilePicture != null ? ClipRRect(
                        borderRadius: BorderRadius.circular(AppSpacing.max),
                        child: Image.file(
                          _profilePicture!,
                          width: 200,
                          height: 200,
                          fit: BoxFit.fill,
                        ).animate(controller: _animationController, autoPlay: false).fadeIn(duration: 600.ms, curve: Curves.easeInSine),
                      ):  SvgPicture.asset(
                        _showFemaleAvatar
                            ? 'assets/svg/female_avatar.svg'
                            : 'assets/svg/male_avatar.svg',
                        height: 200,
                        width: 200,
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
