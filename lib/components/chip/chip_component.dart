import 'package:app/components/text/text_component.dart';
import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'chip_view.dart';

class ChipComponent extends StatelessWidget {
  final String text;
  final String? id;
  final Function? onDelete;

  const ChipComponent({super.key, required this.text, this.onDelete, this.id});

  @override
  Widget build(BuildContext context) {
    return _chipView(this, context);
  }
}
