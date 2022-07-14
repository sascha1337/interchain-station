import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';
import 'package:althea/widgets/settings_page/theme_mode_toggle_switch.dart';

class SettingsPage extends StatefulWidget {

  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(ThemeService.margin16),
            child: Text(ThemeService.settingsName, style: TextStyle(fontSize: 48)),
          ),
          Padding(
            padding: const EdgeInsets.all(ThemeService.margin16),
            child: Column(
              children: const [
                Text("Brightness", style: TextStyle(fontSize: 36)),
                Padding(
                  padding: EdgeInsets.all(ThemeService.margin16),
                  child: FittedBox(child: ThemeModeToggleSwitch()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
