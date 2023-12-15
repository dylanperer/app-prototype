import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final controller = TextEditingController(text: 'helloa');
  final focusNode = FocusNode();

  AppInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return EditableText(
      controller: controller,
      focusNode: focusNode,
      style: const TextStyle(backgroundColor: Colors.green, color: Colors.red),
      cursorColor: Colors.red,
      backgroundCursorColor: Colors.pink,

    );
  }
}
