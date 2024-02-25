import 'package:app/screens/onboard/common/preferred-gender/preferred-gender_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../components/rounded-button/rounded-button_component.dart';
import '../../../../components/safe-area/safe-area_component.dart';
import '../../../../components/touchable-opacity/touchable-opacity_component.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_spacing.dart';
import '../../../../utils/constants/app_errors.dart';
import '../bio/bio_screen.dart';
import '../dob/dob_screen.dart';
import '../gender/gender_screen.dart';
import '../interests/interests_screen.dart';
import '../profile-picture/profile-picture_screen.dart';

part 'onboarding_view.dart';

class OnBoardingSettings {
  String gender = 'F';
  DateTime? dob;
  List<String> interests = [];
  String? preferredGender;
}

class OnboardingScreen extends StatefulWidget {
  final OnBoardingSettings _onBoardSettings = OnBoardingSettings();
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _backButtonAnimController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);
  late final AnimationController _continueButtonAnimController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);
  late final AnimationController _pageViewAnimController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);
  int _currentPage = 0;
  bool _isTransitioning = false;
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

  Future _onContinue() async {
    _isTransitioning = true;

    if (_currentPage == 1) {
      //dob
      if (widget._onBoardSettings.dob == null) {
        setState(() {
          _dobError = AppErrors.emptyDob;
        });
        return;
      }
    }

    if (_currentPage == 3) {
      //dob
      if (widget._onBoardSettings.preferredGender == null) {
        setState(() {
          _preferredGenderError = AppErrors.emptyPreferredGender;
        });
        return;
      }
    }

    _currentPage++;
    await _transitionForward();
    _isTransitioning = false;
  }

  Future<void> _transitionForward() async {
    await _pageViewAnimController.forward().then((value) => widget
        ._pageController
        .nextPage(
            duration: const Duration(milliseconds: 320), curve: Curves.linear)
        .then((value) => _pageViewAnimController.reverse()));
  }

  void onPageViewChange(int value) {
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
    if (_currentPage == 0) return;

    _isTransitioning = true;

    if (_showBackButton) {
      _pageViewAnimController.forward().then((value) => widget._pageController
          .previousPage(
              duration: const Duration(milliseconds: 320), curve: Curves.easeIn)
          .then((value) => _pageViewAnimController.reverse()));
    }
    setState(() {
      _dobError = null;
      _preferredGenderError = null;
    });

    _currentPage--;
    _isTransitioning = false;
  }

  void onComplete() {}

  void _onPreferredGenderChange(String? value) {
    _preferredGenderError = value;
  }

  @override
  Widget build(BuildContext context) {
    return _onboardingView(widget, this, context);
  }
}
