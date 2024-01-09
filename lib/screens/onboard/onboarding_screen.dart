import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/screens/onboard/common/bio_screen.dart';
import 'package:app/screens/onboard/common/dob_screen.dart';
import 'package:app/screens/onboard/common/gender_screen.dart';
import 'package:app/screens/onboard/common/interests_screen.dart';
import 'package:app/screens/onboard/common/profile_pic_screen.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:app/utils/constants/app_errors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/app_rounded_button.dart';
import '../../components/app_safe_area.dart';
import 'common/preferred_gender.dart';

class OnBoardingSettings {
  String gender = 'F';
  DateTime? dob;
  List<String> interests = [];
  String? preferredGender;
}

class OnBoardingScreen extends StatefulWidget {
  final OnBoardingSettings _onBoardSettings = OnBoardingSettings();
  final PageController _pageController = PageController();

  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _backButtonAnimController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);
  late final AnimationController _continueButtonAnimController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);
  late final AnimationController _pageViewAnimController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);
  int _currentPage = 0;
  bool _showBackButton = false;
  String? _dobError;
  String? _preferredGenderError;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _backButtonAnimController.dispose();
    _continueButtonAnimController.dispose();
    _pageViewAnimController.dispose();
  }

  _onContinue() {
    switch (_currentPage) {
      case 1: //dob
        {
          if (widget._onBoardSettings.dob == null) {
            setState(() {
              _dobError = AppErrors.emptyDob;
            });
            break;
          }

          setState(() {
            _dobError = null;
          });
          break;
        }
      case 3: //preferred gender
        {
          if (widget._onBoardSettings.preferredGender == null) {
            setState(() {
              _preferredGenderError = AppErrors.emptyPreferredGender;
            });
            break;
          }

          setState(() {
            _preferredGenderError = null;
          });
          break;
        }
    }
    if (_dobError == null && _preferredGenderError == null) {
      _pageViewAnimController.forward().then((value) => widget._pageController
          .nextPage(
              duration: const Duration(milliseconds: 320), curve: Curves.linear)
          .then((value) => _pageViewAnimController.reverse()));
      ;
    }
  }

  void onPageViewChange(int value) {
    _currentPage = value;
    setState(() {
      if (value > 0) {
        _showBackButton = true;
        _backButtonAnimController.forward();
      } else {
        _showBackButton = false;
        _backButtonAnimController.reverse();
      }

      if (value == 5) {
        _continueButtonAnimController.forward();
      } else {
        _continueButtonAnimController.reverse();
      }
    });
  }

  void onBack() {
    if (_showBackButton) {
      _pageViewAnimController.forward().then((value) => widget._pageController
          .previousPage(
              duration: const Duration(milliseconds: 320), curve: Curves.easeIn)
          .then((value) => _pageViewAnimController.reverse()));
      ;
    }
    setState(() {
      _dobError = null;
      _preferredGenderError = null;
    });
  }

  void onComplete() {}

  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: onPageViewChange,
            controller: widget._pageController,
            children: [
              GenderScreen(
                onBoardSettings: widget._onBoardSettings,
              ),
              // DobScreen(
              //   onBoardSettings: widget._onBoardSettings,
              //   error: _dobError,
              // ),
              // InterestsScreen(
              //   onBoardSettings: widget._onBoardSettings,
              // ),
              // PreferredGender(
              //   onBoardSettings: widget._onBoardSettings,
              //   error: _preferredGenderError,
              //   onPreferredGenderChange: (value) => setState(() {
              //     if (value != null) {
              //       _preferredGenderError = null;
              //     }
              //   }),
              // ),
              // BioScreen(
              //   onBoardSettings: widget._onBoardSettings,
              // ),
              ProfilePictureScreen(
                onBoardSettings: widget._onBoardSettings,
              )
            ],
          )
              .animate(controller: _pageViewAnimController, autoPlay: false)
              .fade(end: 0, duration: 320.ms),
          Positioned(
            bottom: 120,
            child: SmoothPageIndicator(
              controller: widget._pageController,
              count: 6,
              effect: const ExpandingDotsEffect(
                  dotColor: AppColors.stone_200,
                  activeDotColor: AppColors.main_500),
            ),
          ),
          Positioned(
            right: 0,
            child: SizedBox(
              child: _currentPage == 5
                  ? AppRoundedButton(
                      icon: Icons.check,
                      onTap: onComplete,
                    )
                      .animate(
                          controller: _continueButtonAnimController,
                          autoPlay: false)
                      .fadeIn(duration: 600.ms)
                  : AppRoundedButton(
                      onTap: _onContinue,
                    )
                      .animate(
                          controller: _continueButtonAnimController,
                          autoPlay: false)
                      .fadeOut(duration: 600.ms),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: RepaintBoundary(
              child: AppTouchableOpacity(
                      onTap: onBack,
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.only(
                          right: AppSpacing.space_16,
                          bottom: AppSpacing.space_16,
                        ),
                        child: const Icon(
                          Icons.arrow_circle_left_rounded,
                          color: AppColors.stone_600,
                          size: AppSpacing.space_48,
                        ),
                      ))
                  .animate(
                      controller: _backButtonAnimController, autoPlay: false)
                  .fadeIn(duration: 320.ms),
            ),
          ),
        ],
      ),
    );
  }
}
