import 'package:flutter/material.dart';

import '../../components/text/text_component.dart';
part 'settings_view.dart';

class SettingsComponent extends StatelessWidget {
  const SettingsComponent({super.key});
  
  @override
  Widget build(BuildContext context) {
    return _settingsView(this, context);
  }
}
