import 'package:flutter/material.dart';

class NavigationDrawerUsernameContainer extends StatelessWidget {
  final String username;

  const NavigationDrawerUsernameContainer({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 144),
      child: Text(
        username,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        softWrap: false,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }

}
