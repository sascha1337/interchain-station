import 'package:flutter/material.dart';

class ThemeService {

  ThemeService._();

  // Generic (for both dark and light themes)

  static const Color brandColor = Color(0xFFFFCA83);
  static const Color brandBackgroundColor = Color(0xFF333333);

  static const String mainFontFamily = "Noto Sans";

  static const double bottomNavBarElevation = 20.0;

  static const double  margin8 =  8.0;
  static const double margin16 = 16.0;
  static const double margin24 = 24.0;
  static const double margin40 = 40.0;

  static const String assetsName = "Assets";
  static const String stakingName = "Staking";
  static const String governanceName = "Governance";
  static const String tokenSwapName = "Token Swap";
  static const String liquidityPoolsName = "Liquidity Pools";
  static const String historyName = "History";
  static const String settingsName = "Settings";
  
  static const IconData assetsIcon = Icons.account_balance_wallet;
  static const IconData stakingIcon = Icons.horizontal_split;
  static const IconData governanceIcon = Icons.account_balance;
  static const IconData tokenSwapIcon = Icons.swap_vert;
  static const IconData liquidityPoolsIcon = Icons.water_drop;
  static const IconData historyIcon = Icons.history;
  static const IconData settingsIcon = Icons.settings;

  // Dark-theme specific (only for dark theme)
  
  static const Color darkBodyBackgroundColor = Color(0xFF222222);
  static const Color darkCardBackgroundColor = Color(0xFF333333);
  static const Color darkAppBarBackgroundColor = Color(0xFF2D2D2D);
  static const Color darkDrawerBackgroundColor = Color(0xFF2B2B2B);
  static const Color darkBottomNavigationBarBackgroundColor = Color(0xFF2D2D2D);
  static const Color darkDividerColor = Color(0xFF484848);
  static const Color darkIconColor = Color(0xFFBDBDBD);
  static const Color darkButtonBackgroundColor = Color(0xFFFFCA83);
  static const Color darkButtonForegroundColor = Color(0xFF242424);

  static final ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: mainFontFamily,
    backgroundColor: darkBodyBackgroundColor,
    cardColor: darkCardBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkAppBarBackgroundColor,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: darkDrawerBackgroundColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkBottomNavigationBarBackgroundColor,
      selectedItemColor: Color(0xFFC7C7C7),
      unselectedItemColor: Color(0xFF888888),
      elevation: bottomNavBarElevation,
    ),
    listTileTheme: const ListTileThemeData(
      selectedColor: Color(0xFFC7C7C7),
      iconColor: Color(0xFF888888),
      textColor: Color(0xFF888888),
    ),
    dividerColor: darkDividerColor,
    iconTheme: const IconThemeData(
      color: darkIconColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(darkButtonBackgroundColor),
        foregroundColor: MaterialStateProperty.all<Color>(darkButtonForegroundColor),
        textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.grey.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.grey.withOpacity(0.12);
            }
            return null;
          },
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFFC7C7C7)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.grey.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.grey.withOpacity(0.12);
            }
            return null;
          },
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFFC7C7C7),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Color(0xFFC7C7C7)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFC7C7C7),
          width: 1.5,
        ),
      ),
    ),
  );

  // light-theme specific (only for light theme)

  static const Color lightBodyBackgroundColor = Color(0xFFDDDDDD);
  static const Color lightCardBackgroundColor = Color(0xFFEEEEEE);
  static const Color lightAppBarBackgroundColor = Color(0xFFEEEEEE);
  static const Color lightDrawerBackgroundColor = Color(0xFFEEEEEE);
  static const Color lightBottomNavigationBarBackgroundColor = Color(0xFFEEEEEE);
  static const Color lightDividerColor = Color(0xFFCCCCCC);
  static const Color lightIconColor = Color(0xFF424242);
  static const Color lightButtonBackgroundColor = Color(0xFF363636);
  static const Color lightButtonForegroundColor = Color(0xFFE0E0E0);

  static final ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: mainFontFamily,
    backgroundColor: lightBodyBackgroundColor,
    cardColor: lightCardBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightAppBarBackgroundColor,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: lightDrawerBackgroundColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightBottomNavigationBarBackgroundColor,
      selectedItemColor: Color(0xFF363636),
      unselectedItemColor: Color(0xFF888888),
      elevation: bottomNavBarElevation,
    ),
    listTileTheme: const ListTileThemeData(
      selectedColor: Color(0xFF363636),
      iconColor: Color(0xFF888888),
      textColor: Color(0xFF888888),
    ),
    dividerColor: lightDividerColor,
    iconTheme: const IconThemeData(
      color: lightIconColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF363636)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.grey.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.grey.withOpacity(0.12);
            }
            return null;
          },
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(const Color(0xFF363636)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.grey.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.grey.withOpacity(0.12);
            }
            return null;
          },
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF363636),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Color(0xFF363636)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF363636),
          width: 1.5,
        ),
      ),
    ),
  );

}
