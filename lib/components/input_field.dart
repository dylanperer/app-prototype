import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({super.key});

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

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: 'email',
            prefixIcon: const Icon(Icons.alternate_email),
            prefixIconColor: iconColor(context)));
  }
}
