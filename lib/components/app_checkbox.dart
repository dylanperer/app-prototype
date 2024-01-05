import 'dart:math';

import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

import 'app_touchable_opacity.dart';

class AppCheckBox extends StatefulWidget {
  final String? textPostfix;
  final Widget? textPrefix;
  final bool? isDefaultChecked;
  final bool? variant_1;
  final MainAxisAlignment? alignment;
  final Function(bool value) onChange;

  const AppCheckBox(
      {super.key,
      this.isDefaultChecked,
      this.alignment,
      this.textPostfix,
      this.textPrefix,
      this.variant_1,
      required this.onChange});

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

  @override
  void didUpdateWidget(covariant AppCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.isDefaultChecked!=null){
      setState(() {
        _isChecked = widget.isDefaultChecked!;
      });
    }
  }
  void onTap() {
    setState(() {
      _isChecked = !_isChecked;
    });

    widget.onChange(_isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
        onTap: onTap,
        child: Container(
          padding: widget.variant_1 != null
              ? const EdgeInsets.symmetric(
                  vertical: AppSpacing.space_18,
                  horizontal: AppSpacing.space_16)
              : null,
          decoration: widget.variant_1 != null
              ? BoxDecoration(
                  color:
                      _isChecked ? AppColors.main_100 : AppColors.transparent,
                  borderRadius:
                      const BorderRadius.all(Radius.circular(AppSpacing.max)))
              : null,
          child: Row(
            mainAxisAlignment: widget.alignment ?? MainAxisAlignment.end,
            children: [
              if (widget.textPrefix != null) widget.textPrefix!,
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
                            constraints:
                                BoxConstraints.tight(const Size(16, 16)),
                            decoration: const BoxDecoration(
                                color: AppColors.main_500,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))))
                        .animate(target: _isChecked ? 1 : 0)
                        .fade(duration: 300.ms, curve: Curves.easeInOut),
                  ),
                ],
              ),
              if (widget.textPostfix != null) const Gap(AppSpacing.space_8),
              if (widget.textPostfix != null)
                AppText(
                  text: widget.textPostfix,
                ),
            ],
          ),
        ));
  }
}
