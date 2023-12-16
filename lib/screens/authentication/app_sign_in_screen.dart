import 'package:app/components/app_input_field.dart';
import 'package:app/components/app_text.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';

import '../../components/app_checkbox.dart';
import '../../icons/app_icons_icons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: 'Sign in',
                  size: AppSpacing.space_32,
                ),
                AppText(
                  text: 'Hello there, lets get back into it.',
                  size: AppSpacing.space_18,
                )
              ],
            ),
          ),
          const Column(children: [
            AppInputField(
              hintText: 'email',
              prefixIcon: Icon(Icons.alternate_email),
            ),
            AppInputField(
              hintText: 'password',
              suffixText: 'Forgot?',
              prefixIcon: Icon(
                AppIcons.lock,
                size: 20,
              ),
            ),
            AppCheckBox(isDefaultChecked: true,)
          ]),
          Container(
            color: Colors.cyan,
            child: const AppText(text: 'Signin'),
          )
        ],
      ),
    );
  }
}
