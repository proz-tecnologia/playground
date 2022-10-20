import 'package:flutter/material.dart';
import 'package:formy/src/features/home/home_page.dart';
import 'package:formy/src/features/login/login_page.dart';
import 'package:formy/src/features/register/register_page.dart';
import 'package:formy/src/shared/theme/theme_constants.dart';

import 'features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, currentMode, child) {
        return MaterialApp(
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashPage(),
            '/login': (context) => const LoginPage(),
            '/register': (context) => const RegisterPage(),
            '/home': (context) => HomePage(),
          },
          debugShowCheckedModeBanner: false,
          theme: lighTheme,
          darkTheme: darkTheme,
          themeMode: currentMode,
        );
      },
    );
  }
}
