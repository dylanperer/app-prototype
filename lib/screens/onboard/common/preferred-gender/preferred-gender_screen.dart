import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../components/error/error_component.dart';
import '../../../../components/info-text/info-text_component.dart';
import '../../../../components/radio-button-group/radio-button-group_component.dart';
import '../../../../components/text/text_component.dart';
import '../../../../theme/app_spacing.dart';
import '../onboarding/onboarding_screen.dart';
part 'preferred-gender_view.dart';

class PreferredGenderScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final Function(String? value)? onPreferredGenderChange;
  final String? error;

  const PreferredGenderScreen({super.key, required this.onBoardSettings, this.onPreferredGenderChange, this.error});

  @override
  Widget build(BuildContext context) {
    return _preferredGenderView(this, context);
  }
}
