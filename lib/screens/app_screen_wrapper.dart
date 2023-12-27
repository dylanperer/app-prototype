import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_spacing.dart';

class AppScreenWrapper extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const AppScreenWrapper({super.key, required this.navigationShell});

  @override
  State<AppScreenWrapper> createState() => _AppScreenWrapperState();
}

class _AppScreenWrapperState extends State<AppScreenWrapper> {
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
                      child: widget.navigationShell,
                    )))));
  }
}
