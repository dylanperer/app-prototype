import 'package:app/components/text/text_component.dart';
import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'checkbox_view.dart';

class CheckboxComponent extends StatefulWidget {
  final String? textPostfix;
  final Widget? textPrefix;
  final bool? isDefaultChecked;
  final bool? variant_1;
  final MainAxisAlignment? alignment;
  final Function(bool value) onChange;

  const CheckboxComponent(
      {super.key,
        this.isDefaultChecked,
        this.alignment,
        this.textPostfix,
        this.textPrefix,
        this.variant_1,
        required this.onChange});

  @override
  State<CheckboxComponent> createState() => _CheckboxComponentState();
}

class _CheckboxComponentState extends State<CheckboxComponent> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    if (widget.isDefaultChecked == true) {
      _isChecked = true;
    }
  }

  @override
  void didUpdateWidget(covariant CheckboxComponent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(widget.isDefaultChecked!=null){
      setState(() {
        _isChecked = widget.isDefaultChecked!;
      });
    }
  }
  void onTap() {
    setState(() {
      _isChecked = !_isChecked;
    });

    widget.onChange(_isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return _checkboxView(widget, this, context);
  }
}
