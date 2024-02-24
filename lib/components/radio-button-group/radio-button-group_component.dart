import 'package:app/components/checkbox/checkbox_component.dart';
import 'package:app/components/text/text_component.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../theme/app_spacing.dart';
part 'radio-button-group_view.dart';


class AppRadio {
  final String id;
  final String label;
  late bool isActive;
  final Function(bool isChecked) onChange;

  AppRadio(this.id, this.label, this.onChange);
}

class RadioButtonGroupComponent extends StatefulWidget {
  final Map<String, String> items;
  final Function(String? id) onChange;
  final String? defaultItemId;

  const RadioButtonGroupComponent(
      {super.key,
        required this.items,
        required this.onChange,
        this.defaultItemId});

  @override
  State<RadioButtonGroupComponent> createState() => _RadioButtonGroupComponentState();
}

class _RadioButtonGroupComponentState extends State<RadioButtonGroupComponent> {
  List<AppRadio> _appRadios = [];

  @override
  void initState() {
    super.initState();
    widget.items.forEach((key, value) {
      AppRadio appRadio =
      AppRadio(key, value, (isChecked) => onChange(key, isChecked));

      widget.defaultItemId == key
          ? appRadio.isActive = true
          : appRadio.isActive = false;

      _appRadios.add(appRadio);
    });
  }

  void onChange(String id, bool c) {
    if (!c) {
      widget.onChange(null);
    }
    setState(() {
      _appRadios = _appRadios.map((u) {
        if (u.id == id && c) {
          u.isActive = true;
          widget.onChange(id);
        } else {
          u.isActive = false;
        }
        return u;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _radioButtonGroupView(widget, this, context);
  }
}
