import 'package:app/components/touchable-opacity/touchable-opacity_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../theme/app_spacing.dart';
part 'third-party-authentication_view.dart';

class ThirdPartyAuthenticationComponent extends StatelessWidget {

  final Widget? prefix;
  final Widget? postfix;

  const ThirdPartyAuthenticationComponent({super.key, this.prefix, this.postfix});

  @override
  Widget build(BuildContext context) {
    return _thirdPartyAuthenticationView(this, context);
  }
}
