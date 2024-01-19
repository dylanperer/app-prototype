import 'package:app/components/app_text.dart';
import 'package:app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppError extends StatefulWidget {
  final String? error;

  const AppError({super.key, this.error});

  @override
  State<AppError> createState() => _AppErrorState();
}

class _AppErrorState extends State<AppError> with TickerProviderStateMixin {
  late AnimationController _textAnimationController;

  @override
  void initState() {
    super.initState();
    _textAnimationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AppError oldWidget) {
    super.didUpdateWidget(oldWidget);
    _textAnimationController.reset();
    _textAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
        child: Container(
          child: AppText(
            text: widget.error ?? "-",
            color: widget.error != null ? AppColors.red_400 : Colors
                .transparent,
          )
              .animate(controller: _textAnimationController)
              .moveX(duration: 50.ms, begin: 0, end: 5, curve: Curves.linear)
              .then()
              .moveX(duration: 50.ms, begin: 5, end: 0, curve: Curves.linear)
              .then()
              .moveX(duration: 50.ms, begin: 0, end: -5, curve: Curves.linear)
              .then()
              .moveX(duration: 50.ms, begin: -5, end: 0, curve: Curves.linear),
        ));
  }
}