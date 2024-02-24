import 'package:app/components/app_chip.dart';
import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppChipGroup extends StatelessWidget {
  final List<AppChip> interests;

  const AppChipGroup({super.key, required this.interests});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (interests.isNotEmpty)
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.space_8),
                  child: AppText(
                    text: '${interests.length} selected.',
                    color: AppColors.stone_600,
                    size: AppSpacing.space_12,
                  ))),
        SizedBox(
          height: 175,
          width: AppSpacing.max,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                alignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.up,
                spacing: AppSpacing.space_4,
                runSpacing: AppSpacing.space_8,
                children: [...interests],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
