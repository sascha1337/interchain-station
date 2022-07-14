import 'package:flutter/material.dart';

import 'package:althea/services/navigation_service.dart';
import 'package:althea/services/theme_service.dart';
import 'package:althea/widgets/navigation_drawer/navigation_drawer_menu_item.dart';

class MenuItemData {
  final String title;
  final IconData iconData;
  final AppPage appPage;

  MenuItemData({
    required this.title,
    required this.iconData,
    required this.appPage,
  });
}

final menuItems = [
  MenuItemData(
      title: ThemeService.assetsName,
      iconData: ThemeService.assetsIcon,
      appPage: AppPage.assets
  ),
  MenuItemData(
      title: ThemeService.stakingName,
      iconData: ThemeService.stakingIcon,
      appPage: AppPage.staking
  ),
  MenuItemData(
      title: ThemeService.governanceName,
      iconData: ThemeService.governanceIcon,
      appPage: AppPage.governance
  ),
  MenuItemData(
      title: ThemeService.tokenSwapName,
      iconData: ThemeService.tokenSwapIcon,
      appPage: AppPage.tokenSwap
  ),
  MenuItemData(
      title: ThemeService.liquidityPoolsName,
      iconData: ThemeService.liquidityPoolsIcon,
      appPage: AppPage.liquidityPools
  ),
  MenuItemData(
      title: ThemeService.historyName,
      iconData: ThemeService.historyIcon,
      appPage: AppPage.history
  ),
  MenuItemData(
      title: ThemeService.settingsName,
      iconData: ThemeService.settingsIcon,
      appPage: AppPage.settings
  ),
];

class NavigationDrawerMenu extends StatelessWidget {
  final AppPage selectedAppPage;
  final Function(AppPage appPage)? onTap;

  const NavigationDrawerMenu({
    Key? key,
    required this.selectedAppPage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: menuItems.map((menuItemData) {
          return NavigationDrawerMenuItem(
            title: menuItemData.title,
            iconData: menuItemData.iconData,
            isSelected: selectedAppPage == menuItemData.appPage,
            onTap: () { _onItemTap(menuItemData.appPage); },
          );
        }).toList(),
      ),
    );
  }

  void _onItemTap(AppPage appPage) {
    onTap?.call(appPage);
  }
}
