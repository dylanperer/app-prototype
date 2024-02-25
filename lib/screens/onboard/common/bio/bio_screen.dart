import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../components/error/error_component.dart';
import '../../../../components/info-text/info-text_component.dart';
import '../../../../components/text-area/text-area_component.dart';
import '../../../../components/text/text_component.dart';
import '../../../../theme/app_spacing.dart';
import '../onboarding/onboarding_screen.dart';
part 'bio_view.dart';

class BioScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;
  final String? error;

  const BioScreen({super.key, required this.onBoardSettings, this.error});

  @override
  Widget build(BuildContext context) {
    return _bioView(this, context);
  }
}
