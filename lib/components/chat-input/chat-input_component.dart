import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../input-field/input_field_component.dart';

part 'chat-input_view.dart';

class ChatInputComponent extends StatefulWidget {
  final Function(bool value) onFocus;

  const ChatInputComponent({super.key, required this.onFocus});

  @override
  State<ChatInputComponent> createState() => _ChatInputComponentState();
}

class _ChatInputComponentState extends State<ChatInputComponent>
    with TickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: Animate.defaultDuration);

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
    _animationController.forward();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _chatInputView(widget, this, context);
  }
}
