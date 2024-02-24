import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../text/text_component.dart';
part 'nav-button_view.dart';

class NavButtonComponent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  final bool isActive;
  final double fitSize;

  const NavButtonComponent(
      {super.key,
        required this.icon,
        required this.text,
        required this.onTap,
        required this.isActive,
        required this.fitSize});

  @override
  Widget build(BuildContext context) {
    return _navButtonView(this, context);
  }
}
