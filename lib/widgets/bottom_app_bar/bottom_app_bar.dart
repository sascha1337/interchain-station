import 'package:flutter/material.dart';

import 'package:althea/services/navigation_service.dart';
import 'package:althea/services/theme_service.dart';

class CustomBottomAppBar extends StatelessWidget {
  final AppPage selectedAppPage;
  final Function(AppPage appPage)? onTap;

  const CustomBottomAppBar({
    Key? key,
    required this.selectedAppPage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelectedPageInBottomBar = NavigationService.appPageToBottomBarMenuIndex.containsKey(selectedAppPage);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      selectedItemColor: isSelectedPageInBottomBar
          ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
          : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(ThemeService.assetsIcon),
          label: ThemeService.assetsName,
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(ThemeService.stakingIcon),
          label: ThemeService.stakingName,
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(ThemeService.governanceIcon),
          label: ThemeService.governanceName,
          tooltip: '',
        ),
      ],
      currentIndex: isSelectedPageInBottomBar ? NavigationService.appPageToBottomBarMenuIndex[selectedAppPage]! : 0,
      onTap: (itemIndex) {
        _onItemTap(NavigationService.bottomBarMenuIndexToAppPage[itemIndex]!);
      },
    );
  }

  void _onItemTap(AppPage appPage) {
    onTap?.call(appPage);
  }

}
