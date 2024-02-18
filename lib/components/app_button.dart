import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'app_touchable_opacity.dart';

class AppButton extends StatefulWidget {
  final Future<void> Function() onTap;
  final String text;

  const AppButton({super.key, required this.onTap, required this.text});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isLoading = false;

  void _onTap() async {
    setState(() {
      _isLoading = true;
    });

    await widget.onTap();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTouchableOpacity(
      isDisabled: _isLoading,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 0, horizontal: AppSpacing.space_6),
        decoration: const BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(AppSpacing.space_56)),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: -14,
                  color: Colors.black,
                  blurRadius: 16)
            ]),
        child: Container(
            constraints:
                const BoxConstraints.expand(height: AppSpacing.space_68),
            decoration: const BoxDecoration(
                color: AppColors.main_500,
                borderRadius:
                    BorderRadius.all(Radius.circular(AppSpacing.space_56))),
            child: Align(
              child: RepaintBoundary(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircularProgressIndicator(
                      color: AppColors.neutral_100,
                      backgroundColor: AppColors.stone_350,
                      strokeWidth: 4.5,
                    )
                        .animate(target: _isLoading ? 1 : 0)
                        .fade(duration: 300.ms, curve: Curves.easeInOut),
                    AppText(
                      text: widget.text,
                      size: AppSpacing.space_20,
                      color: AppColors.neutral_100,
                      fontWeight: FontWeight.w700,
                    )
                        .animate(target: _isLoading ? 0 : 1)
                        .fade(duration: 300.ms, curve: Curves.easeInOut),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
