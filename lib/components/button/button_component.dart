import 'package:app/components/text/text_component.dart';
import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'button_view.dart';

class ButtonComponent extends StatefulWidget {
  final Future<void> Function() onTap;
  final String text;

  const ButtonComponent({super.key, required this.onTap, required this.text});
  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  bool _isLoading = false;

  void _onTap() async {
    setState(() {
      _isLoading = true;
    });

    await widget.onTap();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buttonView(widget, this, context);
  }
}
