import 'package:app/components/app_error.dart';
import 'package:app/screens/onboard/common/dob_screen.dart';
import 'package:app/screens/onboard/common/gender_screen.dart';
import 'package:app/screens/onboard/common/interests_screen.dart';
import 'package:app/theme/app_colors.dart';
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
  int _currentPage = 0;

  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  String? _dobError;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  _onContinue() {
    switch (widget._currentPage) {
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

  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          RepaintBoundary(
              child: PageView(
            onPageChanged: (value) {
              widget._currentPage = value;
            },
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
              )
            ],
          )),
          Positioned(
            bottom: 150,
            child: SmoothPageIndicator(
              controller: widget._pageController,
              count: 4,
              effect: const ExpandingDotsEffect(
                  dotColor: AppColors.stone_200,
                  activeDotColor: AppColors.main_500),
            ),
          ),
          Positioned(
              right: 0,
              child: AppRoundedButton(
                onTap: _onContinue,
              )),
        ],
      ),
    );
  }
}
