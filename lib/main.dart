import 'package:app/components/app_text.dart';
import 'package:app/screens/authentication/app_sign_in_screen.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_spacing.dart';
import 'package:app/theme/defaults/color_schemes.g.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height - AppSpacing.space_64;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
            useMaterial3: true,
            fontFamily: 'inter',
            colorScheme: lightColorScheme),
        darkTheme: ThemeData(
            useMaterial3: true,
            fontFamily: 'inter',
            colorScheme: darkColorScheme),
        home: Scaffold(
            body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: AppSpacing.space_28),
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: SizedBox(
                          height: h,
                          child: const SignInScreen(),
                        ))))));
  }
}
