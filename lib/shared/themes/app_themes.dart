import 'package:flutter/material.dart';
import 'themes.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.scaffoldColor,
      primaryColor: AppColors.appRed,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.scaffoldColor,
        foregroundColor: Colors.white,
        titleTextStyle: AppTextStyle.button.copyWith(
          color: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        bodyText1: AppTextStyle.bodyText1,
        bodyText2: AppTextStyle.bodyText2,
        button: AppTextStyle.button,
        headline5: AppTextStyle.headline5,
        caption: AppTextStyle.caption,
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.appRed,
        onPrimary: Colors.white,
        secondary: AppColors.appRed,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: AppColors.eerieBlack,
        onBackground: Colors.white,
        surface: AppColors.eerieBlack,
        onSurface: Colors.white,
      ));
}
