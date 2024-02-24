import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'text-area_view.dart';

class TextAreaComponent extends StatelessWidget {
  const TextAreaComponent({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _textAreaView(this, context);
  }
}
