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

class _AppTouchableOpacityState extends State<AppTouchableOpacity>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void onTouch() {
    if (widget.isDisabled == null || widget.isDisabled == false) {
      _animationController
          .forward()
          .then((value) => _animationController.reverse());
    }
  }

  bool _isNotDisabled() {
    if (widget.isDisabled == null || widget.isDisabled == false) {
      return true;
    }
    return false;
  }

  void _onTap() {
    if (_isNotDisabled()) {
      _animationController
          .forward()
          .then((value) => _animationController.reverse());
      if (widget.onTap != null) {
        widget.onTap!();
      }
    }
  }

  void onTapDown() {
    if (_isNotDisabled()) {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
              onTap: (){
                FocusScope.of(context).unfocus();
                _onTap();
              },
              onTapDown: (details) => onTapDown(),
              onTapUp: (x) => _animationController.reverse(),
              onTapCancel: _animationController.reverse,
              child: widget.child)
          .animate(controller: _animationController, autoPlay: false)
          .fade(end: 0.5, duration: 175.ms, curve: Curves.linear),
    );
  }
}
