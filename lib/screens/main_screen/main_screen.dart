import 'package:flutter/material.dart';

import 'package:althea/services/navigation_service.dart';
import 'package:althea/services/responsive_ui_service.dart';

import 'package:althea/widgets/commons/app_logo.dart';
import 'package:althea/widgets/top_app_bar/menu_button.dart';
import 'package:althea/widgets/navigation_drawer/custom_navigation_drawer.dart';
import 'package:althea/widgets/bottom_app_bar/bottom_app_bar.dart';

import 'package:althea/screens/main_screen/assets_page.dart';
import 'package:althea/screens/main_screen/staking_page.dart';
import 'package:althea/screens/main_screen/governance_page.dart';
import 'package:althea/screens/main_screen/token_swap_page.dart';
import 'package:althea/screens/main_screen/liquidity_pools_page.dart';
import 'package:althea/screens/main_screen/history_page.dart';
import 'package:althea/screens/main_screen/settings_page.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  AppPage _appPage = AppPage.assets;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          var screenSizeClass = ResponsiveUiService.getScreenSizeClass(constraints.maxWidth);
          var body = _buildBody();
          var drawer = CustomNavigationDrawer(
            selectedAppPage: _appPage,
            onPageSelected: (appPage) {
              setState(() {
                _appPage = appPage;
              });
              Navigator.of(context).pop(); // Close nav drawer
            },
          );
          if (screenSizeClass == ScreenSizeClass.large) {
            body = Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                    width: 240,
                    child: drawer,
                ),
                Expanded(child: body),
              ],
            );
          }
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            appBar: AppBar(
              leading: screenSizeClass != ScreenSizeClass.large ? const MenuButton() : null,
              centerTitle: true,
              title: const AppLogo(size: 36),
            ),
            drawer: screenSizeClass != ScreenSizeClass.large ? drawer : null,
            bottomNavigationBar: screenSizeClass != ScreenSizeClass.large
                ? CustomBottomAppBar(
                    selectedAppPage: _appPage,
                    onTap: (appPage) { setState(() { _appPage = appPage; }); },)
                : null,
            body: body,
          );
        }
    );
  }

  Widget _buildBody() {
    switch (_appPage) {
      case AppPage.assets:
        return const AssetsPage();
      case AppPage.staking:
        return const StakingPage();
      case AppPage.governance:
        return const GovernancePage();
      case AppPage.tokenSwap:
        return const TokenSwapPage();
      case AppPage.liquidityPools:
        return const LiquidityPoolsPage();
      case AppPage.history:
        return const HistoryPage();
      case AppPage.settings:
        return const SettingsPage();
    }
  }

}
