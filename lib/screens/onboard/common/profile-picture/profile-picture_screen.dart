import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../components/error/error_component.dart';
import '../../../../components/info-text/info-text_component.dart';
import '../../../../components/text/text_component.dart';
import '../../../../components/touchable-opacity/touchable-opacity_component.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_spacing.dart';
import '../../../../utils/helpers/app_ui.dart';
import '../onboarding/onboarding_screen.dart';

part 'profile-picture_view.dart';

class ProfilePictureScreen extends StatefulWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;

  const ProfilePictureScreen(
      {super.key, required this.onBoardSettings, this.error});

  @override
  State<ProfilePictureScreen> createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen>
    with TickerProviderStateMixin {
  File? _profilePicture;
  bool _showFemaleAvatar = true;
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);

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
              const TouchableOpacityComponent(
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
                    TextComponent(
                      text: 'Camera',
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
              TouchableOpacityComponent(
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
                    TextComponent(
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
            content: const TextComponent(
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
    return _profilePictureView(widget, this, context);
  }
}
