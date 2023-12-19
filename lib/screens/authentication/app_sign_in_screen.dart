import 'package:app/components/app_button.dart';
import 'package:app/components/app_input_field.dart';
import 'package:app/components/app_interactive_label.dart';
import 'package:app/components/app_text.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../components/app_checkbox.dart';
import '../../components/app_third_part_auth.dart';
import '../../icons/app_icons_icons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          child: SvgPicture.asset('assets/svg/logo1.svg'),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: 'Sign in',
                size: AppSpacing.space_32,
                fontWeight: FontWeight.w800,
              ),
              AppText(
                text: 'Hello there, lets get back into it.',
                size: AppSpacing.space_18,
              )
            ],
          ),
        ),
        const Column(
          children: [
            AppInputField(
              hintText: 'email',
              prefixIcon: Icon(Icons.alternate_email),
            ),
            Gap(AppSpacing.space_16),
            AppInputField(
              hintText: 'password',
              suffixText: 'Forgot?',
              prefixIcon: Icon(
                AppIcons.lock,
                size: 20,
              ),
            ),
          ],
        ),
        // const AppText(text: 'error placeholder', color: Colors.red,),
        const Align(
            alignment: Alignment.centerLeft,
            child: AppCheckBox(isDefaultChecked: true)),
        const AppButton(),
        const AppThirdPartAuth(
          prefix: AppText(text: 'Or, login with...'),
          postfix: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(text: 'Don\'t have one yet? '),
              AppInteractiveLabel(text:'Create account')
            ],
          ),
        )
      ],
    );
  }
}
