import 'package:app/components/input_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
        ),
        home: Scaffold(
            body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              children: [
                AppInputField(),
                Spacer(),
                AppInputField(),
              ],
            ),
          ),
        )));
  }
}
