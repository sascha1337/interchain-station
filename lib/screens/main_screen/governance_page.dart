import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';

class GovernancePage extends StatefulWidget {

  const GovernancePage({Key? key}) : super(key: key);

  @override
  State<GovernancePage> createState() => _GovernancePageState();
}

class _GovernancePageState extends State<GovernancePage> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(ThemeService.governanceName),
    );
  }

}
