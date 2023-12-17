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

  const AppInputField(
      {super.key,
      this.hintText,
      this.suffixText,
      this.suffixMaxWidth,
      this.onSuffixTap,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColors.stone_700, fontSize: AppSpacing.space_16_5),
      decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.main_500, width: 1.5),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.stone_350, width: 1.5),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.stone_350, width: 1.5),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.stone_400),
          prefixIcon: prefixIcon != null
              ? Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: prefixIcon)
              : null,
          prefixIconConstraints: BoxConstraints.tight(const Size(32, 24)),
          prefixIconColor: iconColor(context),
          suffixIcon: suffixText != null
              ? TouchableOpacity(
                  onTap: onSuffixTap,
                  child: Container(
                      color: Colors.transparent,
                      constraints:
                          BoxConstraints.tight(Size(suffixMaxWidth ?? 80, 24)),
                      alignment: Alignment.centerRight,
                      child: AppText(
                        text: suffixText ?? '',
                        color: AppColors.main_500,
                        fontWeight: FontWeight.w600,
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
