import 'package:app/components/text/text_component.dart';
import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';

part 'input_field_view.dart';

class InputFieldComponent extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final String? suffixText;
  final Widget? suffix;
  final double? suffixMaxWidth;
  final VoidCallback? onSuffixTap;
  final ValueChanged<String>? onSubmitted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const InputFieldComponent(
      {super.key,
      this.hintText,
      this.suffixText,
      this.suffixMaxWidth,
      this.onSuffixTap,
      this.prefixIcon,
      this.onSubmitted,
      this.controller,
      this.suffix,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return _inputFieldView(this, context);
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
