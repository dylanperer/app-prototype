import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../components/info-text/info-text_component.dart';
import '../../../../components/interactive-label/interactive-label_component.dart';
import '../../../../components/onboarding-gender-toggle/onboarding-gender-toggle_component.dart';
import '../../../../components/text/text_component.dart';
import '../../../../theme/app_spacing.dart';
import '../../../../utils/helpers/app_ui.dart';
import '../onboarding/onboarding_screen.dart';
part 'gender_view.dart';

class GenderScreen extends StatelessWidget {
  final OnBoardingSettings onBoardSettings;

  const GenderScreen({super.key, required this.onBoardSettings});

  void _showMoreOptions(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(AppSpacing.space_32))),
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_20, horizontal: 0),
          child: DraggableScrollableSheet(
            expand: false,
            builder: (_, controller) {
              return ListView.builder(
                controller: controller,
                itemBuilder: (_, i) => ListTile(title: Text('Item $i')),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _genderView(this, context);
  }
}
