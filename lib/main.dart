import 'package:app/screens/authentication/app_sign_in_screen.dart';
import 'package:app/theme/defaults/color_schemes.g.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(useMaterial3: true, fontFamily: 'dmSans', colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, fontFamily: 'dmSans', colorScheme: darkColorScheme),
        home: const Scaffold(
            body: SafeArea(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: SignInScreen()))));
  }
}
