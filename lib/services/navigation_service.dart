
enum AppPage {
  assets,
  staking,
  governance,
  tokenSwap,
  liquidityPools,
  history,
  settings,
}

class NavigationService {

  NavigationService._();

  static const appPageToDrawerMenuIndex = {
    AppPage.assets: 0,
    AppPage.staking: 1,
    AppPage.governance: 2,
    AppPage.tokenSwap: 3,
    AppPage.liquidityPools: 4,
    AppPage.history: 5,
    AppPage.settings: 6,
  };

  static const drawerMenuIndexToAppPage = {
    0: AppPage.assets,
    1: AppPage.staking,
    2: AppPage.governance,
    3: AppPage.tokenSwap,
    4: AppPage.liquidityPools,
    5: AppPage.history,
    6: AppPage.settings,
  };

  static const appPageToBottomBarMenuIndex = {
    AppPage.assets: 0,
    AppPage.staking: 1,
    AppPage.governance: 2,
  };

  static const bottomBarMenuIndexToAppPage = {
    0: AppPage.assets,
    1: AppPage.staking,
    2: AppPage.governance,
  };

}
