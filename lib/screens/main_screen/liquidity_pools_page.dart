import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';

class LiquidityPoolsPage extends StatefulWidget {

  const LiquidityPoolsPage({Key? key}) : super(key: key);

  @override
  State<LiquidityPoolsPage> createState() => _LiquidityPoolsPageState();
}

class _LiquidityPoolsPageState extends State<LiquidityPoolsPage> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(ThemeService.liquidityPoolsName),
    );
  }

}
