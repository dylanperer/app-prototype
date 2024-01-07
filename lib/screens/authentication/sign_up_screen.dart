import 'dart:convert';

import 'package:app/components/app_button.dart';
import 'package:app/components/app_error.dart';
import 'package:app/components/app_input_field.dart';
import 'package:app/components/app_interactive_label.dart';
import 'package:app/components/app_text.dart';
import 'package:app/external/api.dart';
import 'package:app/external/app_api.dart';
import 'package:app/nav/app_router.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../components/app_checkbox.dart';
import '../../components/app_safe_area.dart';
import '../../components/app_third_part_auth.dart';
import '../../icons/app_icons_icons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String? _error;

  @override
  void initState() {
    super.initState();
    _error = null;
  }

  Future<void> _onSignIn() async {
    setState(() {
      _error = null;
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
    return AppSafeArea(
      child: Flex(
        direction: Axis.vertical,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  text: 'Sign up',
                  size: AppSpacing.space_28,
                  fontWeight: FontWeight.w800,
                ),
                AppText(
                  text: 'Hello there, lets get back into it.',
                  size: AppSpacing.space_18,
                )
              ],
            ),
          ),
          Column(
            children: [
              const AppInputField(
                hintText: 'email',
                prefixIcon: Icon(Icons.alternate_email),
              ),
              const Gap(AppSpacing.space_16),
              const AppInputField(
                hintText: 'password',
                prefixIcon: Icon(
                  AppIcons.lock,
                  size: 20,
                ),
              ),
              const Gap(AppSpacing.space_16),
              AppError(error: _error)
            ],
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: AppCheckBox(isDefaultChecked: true, textPostfix: 'Agree to Terms & Conditions',onChange: (value) => print(''))),
          AppButton(
            text: 'Join',
            onTap: () async => {await _onSignIn()},
          ),
          AppThirdPartAuth(
            prefix: const AppText(text: 'Or, login with...'),
            postfix: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppText(text: 'Already have an account? '),
                AppInteractiveLabel(
                  text: 'Sign in',
                  onTap: () {
                    context.go(AppRouter.signInRoute);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
