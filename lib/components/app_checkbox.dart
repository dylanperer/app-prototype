import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class AppCheckBox extends StatefulWidget {
  final bool? isDefaultChecked;
  final MainAxisAlignment? alignment;

  const AppCheckBox({super.key, this.isDefaultChecked, this.alignment});

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();

    if (widget.isDefaultChecked == true) {
      isChecked = true;
    }
  }

  void onTap() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
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
                Container(
                    constraints: BoxConstraints.tight(const Size(16, 16)),
                    decoration: BoxDecoration(
                        color:
                            isChecked ? AppColors.main_500 : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)))),
              ],
            ),
            const Gap(AppSpacing.space_8),
            AppText(
              text: 'Remeber me',
            ),
          ],
        ));
  }
}
