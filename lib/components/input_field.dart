import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          hintText: 'email',
          prefixIcon: Icon(Icons.alternate_email),
          focusColor: Colors.red,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green))),
    );
  }
}
