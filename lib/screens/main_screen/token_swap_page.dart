import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';

class TokenSwapPage extends StatefulWidget {

  const TokenSwapPage({Key? key}) : super(key: key);

  @override
  State<TokenSwapPage> createState() => _TokenSwapPageState();
}

class _TokenSwapPageState extends State<TokenSwapPage> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(ThemeService.tokenSwapName),
    );
  }

}
