import 'package:app/components/text/text_component.dart';
import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'interactive-label_view.dart';

class InteractiveLabelComponent extends StatelessWidget {

  final String text;
  final GestureTapCallback? onTap;

  const InteractiveLabelComponent({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return _interactiveLabelView(this, context);
  }
}
