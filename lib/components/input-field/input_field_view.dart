import 'package:app/components/input-field/input_field_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../app_text.dart';
import '../app_touchable_opacity.dart';

class InputFieldView {
  final InputFieldComponent appInputField;
  final BuildContext buildContext;

  InputFieldView({required this.appInputField, required this.buildContext});

  Widget getView(){
    return TextField(
      focusNode: appInputField.focusNode,
      controller: appInputField.controller,
      onSubmitted: appInputField.onSubmitted,
      style: const TextStyle(
          color: AppColors.stone_700, fontSize: AppSpacing.space_16_5),
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.space_18)),
            borderSide: BorderSide(color: AppColors.main_500, width: 1.2),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.space_18)),
            borderSide: BorderSide(color: AppColors.stone_300, width: 1.2),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.space_18)),
            borderSide: BorderSide(color: AppColors.stone_300, width: 1.2),
          ),
          hintText: appInputField.hintText,
          hintStyle: const TextStyle(color: AppColors.stone_400),
          prefixIcon: appInputField.prefixIcon != null
              ? Container(
              margin: const EdgeInsets.only(right: 8),
              child: appInputField.prefixIcon)
              : null,
          prefixIconConstraints: BoxConstraints.tight(const Size(48, 24)),
          prefixIconColor: appInputField.iconColor(buildContext),
          suffixIcon: appInputField.suffixText != null
              ? AppTouchableOpacity(
            onTap: appInputField.onSuffixTap,
            child: Container(
                color: Colors.transparent,
                constraints: BoxConstraints.tight(
                    Size(appInputField.suffixMaxWidth ?? 100, 24)),
                alignment: Alignment.center,
                child: AppText(
                  text: appInputField.suffixText ?? '',
                  color: AppColors.main_500,
                  fontWeight: FontWeight.w700,
                )),
          )
              : appInputField.suffix),
    );
  }
}

