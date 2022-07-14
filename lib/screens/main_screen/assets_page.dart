import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';

class AssetsPage extends StatefulWidget {

  const AssetsPage({Key? key}) : super(key: key);

  @override
  State<AssetsPage> createState() => _GovernancePageState();
}

class _GovernancePageState extends State<AssetsPage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ThemeService.margin8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("🚀", style: TextStyle(fontSize: 96),),
            Text("LFG!", style: TextStyle(fontSize: 72),),
          ],
        ),
      ),
    );
  }

}