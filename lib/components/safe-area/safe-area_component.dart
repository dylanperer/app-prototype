import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'safe-area_view.dart';

class SafeAreaComponent extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final PreferredSizeWidget? appBar;

  const SafeAreaComponent({super.key, required this.child, this.bottomNavigationBar, this.bottomSheet, this.appBar});

  @override
  Widget build(BuildContext context) {

    return _safeAreaView(this, context);
  }
}
