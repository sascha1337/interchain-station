import 'package:flutter/material.dart';

import 'package:althea/services/theme_service.dart';

class HistoryPage extends StatefulWidget {

  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(ThemeService.historyName),
    );
  }

}
