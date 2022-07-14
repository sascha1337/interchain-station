import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 600,
      child: TextButton(
        child: const Text(
          "SIGN UP",
          style: TextStyle(fontSize: 14),
        ),
        onPressed: () {},
      ),
    );
  }

}
