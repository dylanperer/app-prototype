import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';

part 'text_view.dart';

class TextComponent extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const TextComponent(
      {super.key, this.text, this.size, this.fontWeight, this.color, this.textAlign, this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return _textView(this, context);
  }
}
