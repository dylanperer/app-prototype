import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppTouchableOpacity extends StatefulWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final bool? isEnabled;

  const AppTouchableOpacity({super.key, required this.child, this.onTap, this.isEnabled});

  @override
  State<AppTouchableOpacity> createState() => _AppTouchableOpacityState();
}

class _AppTouchableOpacityState extends State<AppTouchableOpacity> {
  bool _isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
          onTap: widget.onTap,
          onTapDown: (x) => setState(() {
            if(widget.isEnabled == true){
              _isTapDown = true;
            }
          }),
          onTapUp:(x) => setState(() {
            _isTapDown = false;
          }),
          onTapCancel: () => setState(() {
            _isTapDown = false;
          }),
          child: widget.child),
    ).animate(target: _isTapDown ? 1 : 0)
        .fade(end: 0.5, duration: 600.ms, curve: Curves.easeInOut);
  }
}
