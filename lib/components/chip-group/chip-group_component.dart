import 'package:app/components/chip/chip_component.dart';
import 'package:app/components/text/text_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'chip-group_view.dart';

class ChipGroupComponent extends StatelessWidget {
  final List<ChipComponent> interests;

  const ChipGroupComponent({super.key, required this.interests});

  @override
  Widget build(BuildContext context) {
    return _chipGroupView(this, context);
  }
}
