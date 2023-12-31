import 'package:flutter/material.dart';

import '../theme/app_spacing.dart';

class AppSafeArea extends StatelessWidget {
  final Widget child;

  const AppSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height - AppSpacing.space_64;
    final double safePadding = MediaQuery.of(context).padding.top;

    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 0, horizontal: AppSpacing.space_28),
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SizedBox(
                      height: h - safePadding,
                      child: child,
                    )))));
  }
}
