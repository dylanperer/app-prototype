import 'package:flutter/material.dart';

class SwitchComponent extends StatelessWidget {
  final bool isActive;
  final Widget active;
  final Widget fallBack;

  const SwitchComponent({super.key, required this.isActive, required this.fallBack, required this.active});

  @override
  Widget build(BuildContext context) {
    if(isActive){
      return active;
    }
    return fallBack;
  }
}
