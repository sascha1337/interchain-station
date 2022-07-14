import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: "Password",
        border: OutlineInputBorder(),
      ),
      style: TextStyle(fontSize: 20),
      obscureText: true,
    );
  }

}
