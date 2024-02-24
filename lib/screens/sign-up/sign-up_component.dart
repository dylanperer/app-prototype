import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../components/button/button_component.dart';
import '../../components/checkbox/checkbox_component.dart';
import '../../components/error/error_component.dart';
import '../../components/input-field/input_field_component.dart';
import '../../components/interactive-label/interactive-label_component.dart';
import '../../components/safe-area/safe-area_component.dart';
import '../../components/text/text_component.dart';
import '../../components/third-party-authentication/third-party-authentication_component.dart';
import '../../external/api.dart';
import '../../external/app_api.dart';
import '../../icons/app_icons_icons.dart';
import '../../nav/app_router.dart';
import '../../theme/app_spacing.dart';

part 'sign-up_view.dart';

class SignUpComponent extends StatefulWidget {
  const SignUpComponent({super.key});

  @override
  State<SignUpComponent> createState() => _SignUpComponentState();
}

class _SignUpComponentState extends State<SignUpComponent> {
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
    return _signUpView(widget, this, context);
  }
}
