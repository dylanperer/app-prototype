import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'rounded-button_view.dart';

class RoundedButtonComponent extends StatelessWidget {

  final GestureTapCallback onTap;
  final Color? color;
  final IconData? icon;

  const RoundedButtonComponent({super.key, required this.onTap, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return _roundedButtonView(this, context);
  }
}
