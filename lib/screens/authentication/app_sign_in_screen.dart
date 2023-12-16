import 'package:app/components/app_input_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppInputField(hintText: 'email'),
          AppInputField(
            hintText: 'password',
            suffixText: 'Forgot?',
          )
        ],
      ),
    );
  }
}
