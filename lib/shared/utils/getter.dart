import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Get {
  static final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  static BuildContext? get context => _key.currentContext;

  static double get textScaleFactor => ui.window.textScaleFactor;

  static double get width => MediaQuery.of(context!).size.width;

  static double get height => MediaQuery.of(context!).size.height;

  static double get bottom => MediaQuery.of(context!).viewPadding.bottom == 0
      ? AppStyle.appPaddingVal
      : MediaQuery.of(context!).viewPadding.bottom;

  static double get top => MediaQuery.of(context!).viewPadding.top == 0
      ? AppStyle.appPaddingVal
      : MediaQuery.of(context!).viewPadding.top;
}
