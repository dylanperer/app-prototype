import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppInteractiveLabel extends StatelessWidget {
  final String text;

  const AppInteractiveLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppText(text: text, color: AppColors.main_500, fontWeight: FontWeight.w800,);
  }
}
