import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import 'app_text.dart';

class AppInputField extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final String? suffixText;
  final double? suffixMaxWidth;
  final VoidCallback? onSuffixTap;
  final ValueChanged<String>? onSubmitted;
  final TextEditingController? controller;

  const AppInputField(
      {super.key,
      this.hintText,
      this.suffixText,
      this.suffixMaxWidth,
      this.onSuffixTap,
      this.prefixIcon,
      this.onSubmitted, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      style: const TextStyle(
          color: AppColors.stone_700, fontSize: AppSpacing.space_16_5),
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(AppSpacing.space_18)),
            borderSide: BorderSide(color: AppColors.main_500, width: 1.2),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(AppSpacing.space_18)),
            borderSide: BorderSide(color: AppColors.stone_300, width: 1.2),
          ),
          border: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(AppSpacing.space_18)),
            borderSide: BorderSide(color: AppColors.stone_300, width: 1.2),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.stone_400),
          prefixIcon: prefixIcon != null
              ? Container(
                  margin: const EdgeInsets.only(right: 8), child: prefixIcon)
              : null,
          prefixIconConstraints: BoxConstraints.tight(const Size(48, 24)),
          prefixIconColor: iconColor(context),
          suffixIcon: suffixText != null
              ? AppTouchableOpacity(
                  onTap: onSuffixTap,
                  child: Container(
                      color: Colors.transparent,
                      constraints:
                          BoxConstraints.tight(Size(suffixMaxWidth ?? 100, 24)),
                      alignment: Alignment.center,
                      child: AppText(
                        text: suffixText ?? '',
                        color: AppColors.main_500,
                        fontWeight: FontWeight.w800,
                      )),
                )
              : null),
    );
  }

  Color iconColor(BuildContext context) {
    return MaterialStateColor.resolveWith((Set<MaterialState> states) {
      final colorScheme = Theme.of(context).colorScheme;

      if (states.contains(MaterialState.focused)) {
        return colorScheme.primary;
      }
      if (states.contains(MaterialState.error)) {
        return colorScheme.error;
      }
      return colorScheme.outlineVariant;
    });
  }
}
