import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';

class StakingPage extends StatefulWidget {

  const StakingPage({Key? key}) : super(key: key);

  @override
  State<StakingPage> createState() => _StakingPageState();
}

class _StakingPageState extends State<StakingPage> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(ThemeService.stakingName),
    );
  }

}
