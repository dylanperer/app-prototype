import 'package:app/screens/onboard/common/dob_screen.dart';
import 'package:app/screens/onboard/common/gender_screen.dart';
import 'package:app/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/app_rounded_button.dart';
import '../../components/app_safe_area.dart';

class OnBoardingSettings {
  String gender = 'F';
  DateTime? dob;
}

class OnBoardingScreen extends StatefulWidget {
  final OnBoardingSettings _onBoardSettings = OnBoardingSettings();
  final PageController _pageController = PageController();

  OnBoardingScreen({super.key});

  _goToPage() {
    _pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
  }

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppSafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: widget._pageController,
            children: [
              GenderScreen(
                onBoardSettings: widget._onBoardSettings,
              ),
              DobScreen(
                onBoardSettings: widget._onBoardSettings,
              )
            ],
          ),
          Positioned(
            bottom: 150,
            child: SmoothPageIndicator(
              controller: widget._pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                  dotColor: AppColors.stone_200,
                  activeDotColor: AppColors.main_500),
            ),
          ),
          Positioned(
              right: 0,
              child: AppRoundedButton(
                onTap: widget._goToPage,
              )),
        ],
      ),
    );
  }
}
