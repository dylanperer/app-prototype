import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

class AppTextArea extends StatefulWidget {
  const AppTextArea({super.key});

  @override
  State<AppTextArea> createState() => _AppTextAreaState();
}

class _AppTextAreaState extends State<AppTextArea> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        TextField(
          maxLength: 500,
          maxLines: 5,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.space_18)),
                borderSide: BorderSide(
                    color: AppColors.main_500, width: 1.2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.space_18)),
                borderSide: BorderSide(
                    color: AppColors.stone_300, width: 1.2),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.space_18)),
                borderSide: BorderSide(
                    color: AppColors.stone_300, width: 1.2),
              ),
              hintText: "Write something about you here..."),
        ),
      ],
    );
  }
}
