import 'package:clinic_test_app/shared/themes/themes.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get bottom => MediaQuery.of(this).viewPadding.bottom == 0
      ? AppStyle.appPaddingVal
      : MediaQuery.of(this).viewPadding.bottom;
}
