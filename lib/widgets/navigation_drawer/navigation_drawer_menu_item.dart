import 'package:flutter/material.dart';

class NavigationDrawerMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool? isSelected;
  final Function()? onTap;

  const NavigationDrawerMenuItem({
    Key? key,
    required this.title,
    required this.iconData,
    this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected ?? false,
      leading: Icon(
        iconData,
        semanticLabel: title,
      ),
      title: Text(title),
      onTap: onTap,
    );
  }

}
