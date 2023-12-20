import 'dart:convert';

import 'package:app/components/app_button.dart';
import 'package:app/components/app_input_field.dart';
import 'package:app/components/app_interactive_label.dart';
import 'package:app/components/app_text.dart';
import 'package:app/external/api.dart';
import 'package:app/external/app_api.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:app/utils/constants/app_errors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../components/app_checkbox.dart';
import '../../components/app_third_part_auth.dart';
import '../../icons/app_icons_icons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String _error;

  @override
  void initState() {
    super.initState();
    _error = '';
  }

  Future<void> _onSignIn() async {
    setState(() {
      _error = '';
    });
    var authenticationApi =
        AuthenticationApi(ApiClient(basePath: 'http://192.168.18.39:6969'));
    var request = SignInRequest(email: 'email', password: 'password');

    await AppApi.mutate(
        () =>
            authenticationApi.authenticationSignInPost(signInRequest: request),
        (result) {
      print(result);
    }, (error) {
      setState(() {
        _error = error;
      });
    });
  }

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
        const Align(
            alignment: Alignment.centerLeft,
            child: AppCheckBox(isDefaultChecked: true)),
        AppButton(
          onTap: () async => {await _onSignIn()},
        ),
        const AppThirdPartAuth(
          prefix: AppText(text: 'Or, login with...'),
          postfix: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(text: 'Don\'t have one yet? '),
              AppInteractiveLabel(text: 'Create account')
            ],
          ),
        )
      ],
    );
  }
}
