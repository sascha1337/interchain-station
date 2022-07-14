import 'dart:ui';

import 'package:flutter/material.dart';

enum ScreenSizeClass {
  small,
  medium,
  large
}

class ResponsiveUiService {

  ResponsiveUiService._();

  static const smallScreenWidth = 600;   // width <  600 --> Small screen
  static const largeScreenWidth = 1024;  // width >= 1024 --> Large screen

  static ScreenSizeClass getScreenSizeClass(width) {
    if (width < smallScreenWidth) {
      return ScreenSizeClass.small;
    } else if (width >= largeScreenWidth) {
      return ScreenSizeClass.large;
    } else {
      return ScreenSizeClass.medium;
    }
  }

}

class DragScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
