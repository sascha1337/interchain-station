import 'package:flutter/material.dart';

import 'package:althea/constants.dart';
import 'package:althea/services/font_service.dart';
import 'package:althea/services/theme_service.dart';
import 'package:althea/screens/splash_screen/splash_screen.dart';
import 'package:althea/screens/login_screen/login_screen.dart';

void main() async {
  FontService.initializeFonts();
  runApp(const App());
}

class App extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.system);
  static ThemeMode themeMode = ThemeMode.system;

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeModeNotifier,
        builder: (_, ThemeMode newThemeMode, __) {
          themeMode = newThemeMode;
          return MaterialApp(
            title: Constants.appName,
            theme: ThemeService.lightThemeData,
            darkTheme: ThemeService.darkThemeData,
            themeMode: newThemeMode,
            home: const SplashScreen(
              duration: Duration(milliseconds: Constants.splashScreenDurationMs),
              navigateToWidget: LoginScreen(),
            ),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
