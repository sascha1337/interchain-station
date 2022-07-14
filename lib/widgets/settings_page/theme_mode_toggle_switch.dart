import 'package:flutter/material.dart';

import 'package:toggle_switch/toggle_switch.dart';

import 'package:althea/main_web_app.dart';

class ThemeModeToggleSwitch extends StatefulWidget {

  const ThemeModeToggleSwitch({Key? key}) : super(key: key);

  @override
  State<ThemeModeToggleSwitch> createState() => _ThemeModeToggleSwitchState();
}

class _ThemeModeToggleSwitchState extends State<ThemeModeToggleSwitch> {
  int _switchIndex = 1;

  @override
  void initState() {
    switch (App.themeMode) {
      case ThemeMode.dark:
        _switchIndex = 0;
        break;
      case ThemeMode.system:
        _switchIndex = 1;
        break;
      case ThemeMode.light:
        _switchIndex = 2;
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 600.0,
      minHeight: 60.0,
      initialLabelIndex: _switchIndex,
      cornerRadius: 4.0,
      activeFgColor: Colors.white,
      inactiveBgColor: Colors.grey.shade700,
      inactiveFgColor: Colors.white,
      totalSwitches: 3,
      labels: const ["Always dark", "Adaptive", "Always light"],
      icons: const [
        Icons.dark_mode,
        Icons.auto_awesome,
        Icons.light_mode,
      ],
      iconSize: 32.0,
      activeBgColors: [
        [Colors.blue.shade700, Colors.blue.shade900],
        [Colors.red.shade200, Colors.red.shade300],
        [Colors.lightBlue.shade100, Colors.lightBlue.shade300],
      ],
      onToggle: (index) {
        _switchIndex = index!;
        switch (index) {
          case 0: App.themeModeNotifier.value = ThemeMode.dark; break;
          case 2: App.themeModeNotifier.value = ThemeMode.light; break;
          default: App.themeModeNotifier.value = ThemeMode.system; break;
        }
      },
    );
  }
}
