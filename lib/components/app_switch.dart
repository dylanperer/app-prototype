import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  final bool isActive;
  final Widget active;
  final Widget fallBack;

  const AppSwitch({super.key, required this.isActive, required this.fallBack, required this.active});

  @override
  Widget build(BuildContext context) {
    if(isActive){
      return active;
    }
    return fallBack;
  }
}
