import 'package:flutter/material.dart';

import 'package:althea/services/navigation_service.dart';
import 'package:althea/widgets/navigation_drawer/navigation_drawer_footer.dart';
import 'package:althea/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:althea/widgets/navigation_drawer/navigation_drawer_menu.dart';

class CustomNavigationDrawer extends StatelessWidget {
  final AppPage selectedAppPage;
  final Function(AppPage)? onPageSelected;

  const CustomNavigationDrawer({
    Key? key,
    required this.selectedAppPage,
    this.onPageSelected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const NavigationDrawerHeader(),
          NavigationDrawerMenu(
            selectedAppPage: selectedAppPage,
            onTap: (appPage) { onPageSelected?.call(appPage); },
          ),
          const Divider(),
          const NavigationDrawerFooter(),
        ],
      ),
    );
  }

}
