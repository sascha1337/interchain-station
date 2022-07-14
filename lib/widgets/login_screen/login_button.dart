import 'dart:async';

import 'package:flutter/material.dart';

import 'package:rounded_loading_button/rounded_loading_button.dart';

import 'package:althea/screens/main_screen/main_screen.dart';
import 'package:althea/services/theme_service.dart';

class LoginButton extends StatelessWidget {
  final RoundedLoadingButtonController _controller = RoundedLoadingButtonController();

  LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      height: 60,
      width: 600,
      valueColor: Theme.of(context).brightness == Brightness.light
          ? ThemeService.lightButtonForegroundColor
          : ThemeService.darkButtonForegroundColor,
      color: Theme.of(context).brightness == Brightness.light
          ? ThemeService.lightButtonBackgroundColor
          : ThemeService.darkButtonBackgroundColor,
      borderRadius: 4,
      child: Text(
        "LOGIN",
        style: TextStyle(
          color: Theme.of(context).brightness == Brightness.light
              ? ThemeService.lightButtonForegroundColor
              : ThemeService.darkButtonForegroundColor,
        ),
      ),
      controller: _controller,
      onPressed: () {
        Timer(const Duration(milliseconds: 700), () {
          _controller.success();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
          );
        });
      },
    );
  }

}
