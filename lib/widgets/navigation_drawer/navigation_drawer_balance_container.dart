import 'package:flutter/material.dart';

class NavigationDrawerBalanceContainer extends StatelessWidget {
  final double balance;
  final String tokenSymbol;

  const NavigationDrawerBalanceContainer({
    Key? key,
    required this.balance,
    required this.tokenSymbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 144),
      child: Text(
        "${balance.toStringAsFixed(2)} $tokenSymbol",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        softWrap: false,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }

}
