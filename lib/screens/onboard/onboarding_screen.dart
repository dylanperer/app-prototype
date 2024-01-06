import 'package:app/components/app_error.dart';
import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/screens/onboard/common/bio_screen.dart';
import 'package:app/screens/onboard/common/dob_screen.dart';
import 'package:app/screens/onboard/common/gender_screen.dart';
import 'package:app/screens/onboard/common/interests_screen.dart';
import 'package:app/screens/onboard/common/profile_pic_screen.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:app/utils/constants/app_errors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/app_rounded_button.dart';
import '../../components/app_safe_area.dart';
import '../../nav/app_router.dart';
import 'common/preferred_gender.dart';

class OnBoardingSettings {
  String gender = 'F';
  DateTime? dob;
  List<String> interests = [];
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
  late AnimationController _backButtonAnimController;
  late AnimationController _continueButtonAnimController;
  int _currentPage = 0;
  bool _showBackButton = false;
  String? _dobError;

  @override
  void initState() {
    super.initState();
    _backButtonAnimController = AnimationController(vsync: this);
    _backButtonAnimController.duration = Animate.defaultDuration;

    _continueButtonAnimController = AnimationController(vsync: this);
    _continueButtonAnimController.duration = Animate.defaultDuration;
  }

  @override
  void dispose() {
    super.dispose();
    _backButtonAnimController.dispose();
    _continueButtonAnimController.dispose();
  }

  _onContinue() {
    switch (_currentPage) {
      case 1: //dob
        {
          if (widget._onBoardSettings.dob != null) {
            setState(() {
              _dobError = null;
            });
            widget._pageController.nextPage(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeIn);
          } else {
            setState(() {
              _dobError = AppErrors.emptyDob;
            });
          }
          break;
        }
      default:
        {
          widget._pageController.nextPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn);
        }
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
      widget._pageController.previousPage(
          duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
    }
  }

  void onComplete() {}

  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          RepaintBoundary(
              child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: onPageViewChange,
            controller: widget._pageController,
            children: [
              GenderScreen(
                onBoardSettings: widget._onBoardSettings,
              ),
              DobScreen(
                onBoardSettings: widget._onBoardSettings,
                error: _dobError,
              ),
              InterestsScreen(
                onBoardSettings: widget._onBoardSettings,
              ),
              PreferredGender(
                onBoardSettings: widget._onBoardSettings,
              ),
              BioScreen(
                onBoardSettings: widget._onBoardSettings,
              ),
              ProfilePictureScreen(
                onBoardSettings: widget._onBoardSettings,
              )
            ],
          )),
          Positioned(
            bottom: 150,
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
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.stone_600,
                        size: AppSpacing.space_36,
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
