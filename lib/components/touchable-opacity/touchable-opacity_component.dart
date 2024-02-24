import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

part 'touchable-opacity_view.dart';

class TouchableOpacityComponent extends StatefulWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final bool? isDisabled;

  const TouchableOpacityComponent(
      {super.key, required this.child, this.onTap, this.isDisabled});

  @override
  State<TouchableOpacityComponent> createState() =>
      _TouchableOpacityComponentState();
}

class _TouchableOpacityComponentState extends State<TouchableOpacityComponent>
    with TickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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

  void _onTapDown() {
    if (_isNotDisabled()) {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return _touchableOpacityView(widget, this, context);
  }
}
