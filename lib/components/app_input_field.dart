import 'package:app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final controller = TextEditingController(text: '');
  final focusNode = FocusNode();

  var x = AppColors.main_100;
  AppInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.alternate_email, color: AppColors.stone_350,),
            Expanded(
              child: EditableText(
                controller: controller,
                focusNode: focusNode,
                style: const TextStyle(color: AppColors.stone_350),
                cursorColor: Colors.red,
                backgroundCursorColor: AppColors.neutral_100,
                enableInteractiveSelection: true,
                selectionControls: MaterialTextSelectionControls(),
              ),
            ),
            const Text('postfix')
          ],
        ),
      ],
    );
  }
}
