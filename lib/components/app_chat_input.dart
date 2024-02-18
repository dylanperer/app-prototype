import 'package:app/components/app_touchable_opacity.dart';
import 'package:app/components/input-field/input_field_component.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ChatInputField extends StatefulWidget {
  final Function(bool value) onFocus;

  const ChatInputField({super.key, required this.onFocus});

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> with TickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();
  late final AnimationController _animationController = AnimationController(vsync: this, duration: Animate.defaultDuration);

  void _onFocusChange() {
    if(_focusNode.hasFocus){
      _animationController.reverse();
    }else{
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
    return Container(
      height: 125,
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
          vertical: 0, horizontal: AppSpacing.space_16),
      child: Row(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(right: AppSpacing.space_8),
              child: Row(
                children: [
                  AppTouchableOpacity(
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(AppSpacing.space_16),
                        child: const Icon(
                            Icons.image, color: AppColors.stone_400),
                      )),
                  AppTouchableOpacity(
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(AppSpacing.space_16),
                        child: const Icon(
                          Icons.camera_alt, color: AppColors.stone_400,),
                      )),
                ],
              ),
            ),
          ).animate(controller: _animationController, autoPlay: false).custom(
            duration: 320.ms,
            curve: Curves.easeInOutSine,
            builder: (context, value, child) => SizedBox(width: 100*value/0.8, child: child,)),
          Expanded(
            child: InputFieldComponent(
              focusNode: _focusNode,
              suffix: AppTouchableOpacity(
                  child: Container(
                    padding: const EdgeInsets.all(AppSpacing.space_8),
                    color: Colors.transparent,
                    child: const Icon(Icons.send, color: AppColors.main_500,),
                  )),
              hintText: 'Aa',
            ),
          )
        ],
      ),
    );
  }
}
