import 'package:althea/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogo extends StatelessWidget {
  final double size;

  const AppLogo({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/althea-logo.svg",
      semanticsLabel: "${Constants.appName} logo",
      width: size,
    );
  }

}
