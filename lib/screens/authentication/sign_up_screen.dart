import 'dart:convert';

import 'package:app/components/button/button_component.dart';
import 'package:app/components/checkbox/checkbox_component.dart';
import 'package:app/components/error/error_component.dart';
import 'package:app/components/interactive-label/interactive-label_component.dart';
import 'package:app/components/safe-area/safe-area_component.dart';
import 'package:app/components/text/text_component.dart';
import 'package:app/components/third-party-authentication/third-party-authentication_component.dart';
import 'package:app/external/api.dart';
import 'package:app/external/app_api.dart';
import 'package:app/nav/app_router.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../components/input-field/input_field_component.dart';
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
    return SafeAreaComponent(
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
                TextComponent(
                  text: 'Sign up',
                  size: AppSpacing.space_28,
                  fontWeight: FontWeight.w700,
                ),
                TextComponent(
                  text: 'Hello there, lets get back into it.',
                  size: AppSpacing.space_18,
                )
              ],
            ),
          ),
          Column(
            children: [
              const InputFieldComponent(
                hintText: 'email',
                prefixIcon: Icon(Icons.alternate_email),
              ),
              const Gap(AppSpacing.space_16),
              const InputFieldComponent(
                hintText: 'password',
                prefixIcon: Icon(
                  AppIcons.lock,
                  size: 20,
                ),
              ),
              const Gap(AppSpacing.space_16),
              ErrorComponent(error: _error)
            ],
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: CheckboxComponent(isDefaultChecked: true, textPostfix: 'Agree to Terms & Conditions',onChange: (value) => print(''))),
          ButtonComponent(
            text: 'Join',
            onTap: () async => {await _onSignIn()},
          ),
          ThirdPartyAuthenticationComponent(
            prefix: const TextComponent(text: 'Or, login with...'),
            postfix: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextComponent(text: 'Already have an account? '),
                InteractiveLabelComponent(
                  text: 'Sign in',
                  onTap: () {
                    context.go(AppRouter.route(AppRoute.signIn));
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
