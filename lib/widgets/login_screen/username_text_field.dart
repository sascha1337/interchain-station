import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: "Username",
        border: OutlineInputBorder(),
      ),
      style: TextStyle(fontSize: 20),
      obscureText: false,
      autofocus: true,
    );
  }

}
