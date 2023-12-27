import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppTouchableOpacity extends StatefulWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final bool? isDisabled;

  const AppTouchableOpacity(
      {super.key, required this.child, this.onTap, this.isDisabled});

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
              onTapDown: (x) => {
                    if (widget.isDisabled == null || widget.isDisabled == false)
                      {
                        setState(() {
                          _isTapDown = true;
                        })
                      }
                  },
              onTapUp: (x) => {
                    setState(() {
                      _isTapDown = false;
                    })
                  },
              onTapCancel: () => setState(() {
                    _isTapDown = false;
                  }),
              child: widget.child)
          .animate(target: _isTapDown ? 1 : 0)
          .fade(end: 0.5, duration: 250.ms, curve: Curves.easeInOut),
    );
  }
}
