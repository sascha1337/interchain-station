import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: const Icon(Icons.menu),
        color: Theme.of(context).iconTheme.color,
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    );
  }

}
