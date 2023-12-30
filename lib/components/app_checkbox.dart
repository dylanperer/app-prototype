import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import 'app_touchable_opacity.dart';

class AppCheckBox extends StatefulWidget {
  final String text;
  final bool? isDefaultChecked;
  final MainAxisAlignment? alignment;

  const AppCheckBox(
      {super.key, this.isDefaultChecked, this.alignment, required this.text});

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();

    if (widget.isDefaultChecked == true) {
      _isChecked = true;
    }
  }

  void onTap() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: widget.alignment ?? MainAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    constraints: BoxConstraints.tight(const Size(24, 24)),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.stone_350, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(24)))),
                RepaintBoundary(
                  child: Container(
                          constraints: BoxConstraints.tight(const Size(16, 16)),
                          decoration: const BoxDecoration(
                              color: AppColors.main_500,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))))
                      .animate(target: _isChecked ? 1 : 0)
                      .fade(duration: 300.ms, curve: Curves.easeInOut),
                ),
              ],
            ),
            const Gap(AppSpacing.space_8),
            AppText(
              text: widget.text,
            ),
          ],
        ));
  }
}
