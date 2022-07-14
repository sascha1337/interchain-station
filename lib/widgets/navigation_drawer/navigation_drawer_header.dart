import 'package:althea/services/theme_service.dart';
import 'package:althea/widgets/navigation_drawer/navigation_drawer_balance_container.dart';
import 'package:althea/widgets/navigation_drawer/navigation_drawer_username_container.dart';
import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {

  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: DrawerHeader(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.account_balance_wallet, size: 40,),
                const SizedBox(width: ThemeService.margin8),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                        child: NavigationDrawerUsernameContainer(username: "Username"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                        child: NavigationDrawerBalanceContainer(balance: 100.00, tokenSymbol: "ALT"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
