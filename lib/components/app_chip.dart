import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class AppChip extends StatelessWidget {
  final String text;
  final String? id;
  final Function? onDelete;

  const AppChip({super.key, required this.text, this.onDelete, this.id});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space_6, horizontal: AppSpacing.space_8),
          decoration: BoxDecoration(
              color: AppColors.main_500,
              border: Border.all(width: 1.2, color: AppColors.main_400),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSpacing.max))),
          child: Row(
            children: [
              AppText(
                text: text,
                size: AppSpacing.space_16,
                fontWeight: FontWeight.w700,
                color: AppColors.neutral_100,
              ),
              if (onDelete != null)
                Padding(
                    padding: const EdgeInsets.only(left: AppSpacing.space_4),
                    child: TouchableOpacity(
                      child: const Icon(
                        Icons.cancel,
                        size: AppSpacing.space_20,
                        color: AppColors.neutral_100,
                      ),
                      onTap: () => onDelete!(),
                    ))
            ],
          ),
        ),
      ],
    );
  }
}
