import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../components/error/error_component.dart';
import '../../../../components/info-text/info-text_component.dart';
import '../../../../components/onboarding-date-selector/onboarding-date-selector_component.dart';
import '../../../../components/text/text_component.dart';
import '../../../../theme/app_spacing.dart';
import '../onboarding/onboarding_screen.dart';
part 'dob_view.dart';

class DobScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;

  const DobScreen({super.key, required this.onBoardSettings, this.error});

  @override
  Widget build(BuildContext context) {
    return _dobView(this, context);
  }
}
