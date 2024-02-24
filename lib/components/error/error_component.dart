import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/app_colors.dart';
import '../text/text_component.dart';
part 'error_view.dart';

class ErrorComponent extends StatefulWidget {
  final String? error;

  const ErrorComponent({super.key, this.error});

  @override
  State<ErrorComponent> createState() => _ErrorComponentState();
}

class _ErrorComponentState extends State<ErrorComponent> with TickerProviderStateMixin{
  late AnimationController _textAnimationController;

  @override
  void initState() {
    super.initState();
    _textAnimationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant ErrorComponent oldWidget) {
    super.didUpdateWidget(oldWidget);
    _textAnimationController.reset();
    _textAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return _errorView(widget, this, context);
  }
}
