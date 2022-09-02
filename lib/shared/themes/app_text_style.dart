import 'package:clinic_test_app/shared/utils/getter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  static final String _font = GoogleFonts.nunito().fontFamily!;

  static TextStyle bodyText1 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w500,
    fontSize: 16 * Get.textScaleFactor * 0.90,
  );
  static TextStyle smallest = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w800,
    fontSize: 9 * Get.textScaleFactor * 0.90,
  );
  static TextStyle small = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w800,
    fontSize: 10 * Get.textScaleFactor * 0.90,
  );
  static TextStyle bodyText2 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.normal,
    fontSize: 15 * Get.textScaleFactor * 0.90,
  );
  static TextStyle subtitle2 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w500,
    fontSize: 14 * Get.textScaleFactor * 0.90,
  );
  static TextStyle caption = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w500,
    fontSize: 13 * Get.textScaleFactor * 0.90,
  );
  static TextStyle subtitle1 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.normal,
    fontSize: 16 * Get.textScaleFactor * 0.90,
  );
  static TextStyle headline5 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w600,
    fontSize: 20 * Get.textScaleFactor * 0.90,
  );
  static TextStyle headline4 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w600,
    fontSize: 18 * Get.textScaleFactor * 0.90,
  );
  static TextStyle headline6 = TextStyle(
    fontFamily: _font,
    fontWeight: FontWeight.w600,
    fontSize: 24 * Get.textScaleFactor * 0.90,
  );
  static TextStyle button = TextStyle(
    fontSize: 17 * Get.textScaleFactor * 0.90,
    fontWeight: FontWeight.w700,
    fontFamily: _font,
  );
  static TextStyle headline2 = TextStyle(
    fontSize: 34 * Get.textScaleFactor * 0.90,
    fontWeight: FontWeight.w500,
    fontFamily: _font,
  );
}
