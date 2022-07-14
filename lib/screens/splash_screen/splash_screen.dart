import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';
import 'package:althea/widgets/commons/app_logo.dart';

class SplashScreen extends StatefulWidget {
  final Duration duration;
  final Widget navigateToWidget;

  const SplashScreen({
    Key? key,
    required this.duration,
    required this.navigateToWidget,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _waitAndNavigate();
  }

  void _waitAndNavigate() async {
    await Future.delayed(widget.duration, () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget.navigateToWidget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: Center(
        child: Column(
          children: const [
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(ThemeService.brandColor),
            ),
            Expanded(
              child: Hero(
                tag: "logo",
                child: AppLogo(size: 200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
