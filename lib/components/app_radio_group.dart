import 'package:app/components/app_checkbox.dart';
import 'package:app/components/app_text.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppRadio {
  final String id;
  final String label;
  late bool isActive;
  final Function(bool isChecked) onChange;

  AppRadio(this.id, this.label, this.onChange);
}

class AppRadioGroup extends StatefulWidget {
  final Map<String, String> items;
  final Function(String? id) onChange;

  const AppRadioGroup({super.key, required this.items, required this.onChange});

  @override
  State<AppRadioGroup> createState() => _AppRadioGroupState();
}

class _AppRadioGroupState extends State<AppRadioGroup> {
  List<AppRadio> _appRadios = [];

  @override
  void initState() {
    super.initState();
    widget.items.forEach((key, value) {
      AppRadio appRadio = AppRadio(key, value, (isChecked) => onChange(key, isChecked));
      appRadio.isActive = false;
      _appRadios.add(appRadio);
    });
  }

  void onChange(String id, bool c) {
    if(!c){
      widget.onChange(null);
    }
    setState(() {
      _appRadios = _appRadios.map((u) {
        if (u.id == id && c) {
          u.isActive = true;
          widget.onChange(id);
        }else{
          u.isActive = false;
        }
        return u;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _appRadios
          .map(
            (c) => Column(
              children: [
                AppCheckBox(
                  isDefaultChecked: c.isActive,
                  textPrefix: AppText(
                    text: c.label,
                    fontWeight: FontWeight.w600,
                  ),
                  alignment: MainAxisAlignment.spaceBetween,
                  variant_1: true,
                  onChange: c.onChange,
                ),
                const Gap(AppSpacing.space_16),
              ],
            ),
          )
          .toList(),
    );
  }
}
