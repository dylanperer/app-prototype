import 'package:flutter/material.dart';

import '../theme/app_spacing.dart';

class AppScreenWrapper extends StatelessWidget {
  final Widget child;

  const AppScreenWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height - AppSpacing.space_64;

    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 0, horizontal: AppSpacing.space_28),
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SizedBox(
                      height: h,
                      child: child,
                    )))));
  }
}
