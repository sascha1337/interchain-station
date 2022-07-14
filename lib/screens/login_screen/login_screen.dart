import 'package:flutter/material.dart';

import 'package:althea/constants.dart';
import 'package:althea/services/theme_service.dart';
import 'package:althea/widgets/commons/app_logo.dart';
import 'package:althea/widgets/login_screen/username_text_field.dart';
import 'package:althea/widgets/login_screen/password_text_field.dart';
import 'package:althea/widgets/login_screen/login_button.dart';
import 'package:althea/widgets/login_screen/sign_up_button.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(ThemeService.margin16),
                        child: Hero(
                          tag: "logo",
                            child: AppLogo(size: 200),
                        ),
                      ),
                      const SizedBox(height: ThemeService.margin8),
                      Padding(
                        padding: const EdgeInsets.all(ThemeService.margin16),
                        child: FittedBox(
                          child: Column(
                            children: const [
                              Text(Constants.appName, style: TextStyle(fontSize: 32)),
                              SizedBox(height: ThemeService.margin8),
                              Text(Constants.appSlogan, style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: ThemeService.margin24),
                      const Padding(
                        padding: EdgeInsets.all(ThemeService.margin8),
                        child: UsernameTextField(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(ThemeService.margin8),
                        child: PasswordTextField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: ThemeService.margin16, horizontal: ThemeService.margin8),
                        child: LoginButton(),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: ThemeService.margin8),
                        child: SignUpButton(),
                      ),
                    ],
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
