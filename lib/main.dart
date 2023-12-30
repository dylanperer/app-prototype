import 'package:app/nav/app_router.dart';
import 'package:app/theme/defaults/color_schemes.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugRepaintRainbowEnabled = false;
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Mulish',
          colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Mulish',
          colorScheme: darkColorScheme),
      routerConfig: AppRouter.buildRouter,
    );
  }
}
