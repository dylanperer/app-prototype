import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'onboarding-gender-toggle_view.dart';

class OnboardingGenderToggleComponent extends StatefulWidget {
  final Function(bool isToggled) onToggle;
  final bool? isDefaultChecked;

  const OnboardingGenderToggleComponent(
      {super.key, required this.onToggle, this.isDefaultChecked});

  @override
  State<OnboardingGenderToggleComponent> createState() => _OnboardingGenderToggleComponentState();
}

class _OnboardingGenderToggleComponentState extends State<OnboardingGenderToggleComponent> with TickerProviderStateMixin {
  bool _isToggled = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
    _animationController.duration = Animate.defaultDuration;

    if (widget.isDefaultChecked != null) {
      _isToggled = widget.isDefaultChecked!;
      playAnimation();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void playAnimation(){
    _isToggled
        ? _animationController.forward()
        : _animationController.reverse();
  }

  void onTap() {
    setState(() {
      _isToggled = !_isToggled;
    });
    playAnimation();
    widget.onToggle(_isToggled);
  }

  @override
  Widget build(BuildContext context) {
    return _onboardingGenderToggleView(widget, this, context);
  }
}
