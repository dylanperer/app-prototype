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
          prefixIcon: Container(margin: const EdgeInsets.only(right: 8),  child: const Icon(Icons.alternate_email)),
          prefixIconConstraints: BoxConstraints.tight(Size(32,24)),
          prefixIconColor: iconColor(context),
          suffixIcon: GestureDetector(
            onTap: ()=>print('tap,,,'),
            child: Container(
                color: Colors.blue,
                constraints: BoxConstraints.tight(const Size(60,24)),
                alignment: Alignment.center,
                child: const Text('Forgot?')),
          )),
    );
  }
}
