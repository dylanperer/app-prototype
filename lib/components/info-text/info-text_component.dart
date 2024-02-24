import 'package:app/components/text/text_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'info-text_view.dart';

class InfoTextComponent extends StatelessWidget {
  final String text;
  const InfoTextComponent({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return _infoTextView(this, context);
  }
}
