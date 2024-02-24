import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
part 'top-navigator_view.dart';

class TopNavigatorComponent  extends StatelessWidget implements PreferredSizeWidget {
  const TopNavigatorComponent({super.key});


  @override
  Widget build(BuildContext context) {
    return _topNavigatorView(this, context);
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSpacing.space_56);
}
