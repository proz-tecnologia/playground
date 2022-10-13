import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

ThemeData lighTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    elevation: 0,
    shadowColor: Colors.transparent,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(AppColors.white),
    trackColor: MaterialStateProperty.all(AppColors.gray),
    overlayColor: MaterialStateProperty.all(AppColors.primary),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(AppColors.secondary),
      textStyle: MaterialStateProperty.all<TextStyle>(AppTextTheme.textButton),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 140, vertical: 20),
      ),
      backgroundColor: MaterialStateProperty.all(AppColors.primary),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: AppTextTheme.hintTextField,
    suffixIconColor: AppColors.gray,
    focusColor: AppColors.secondary,
    hoverColor: AppColors.secondary,
    fillColor: AppColors.secondary,
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primary)),
  ),
  checkboxTheme: CheckboxThemeData(
      overlayColor: MaterialStateProperty.all(Colors.grey),
      fillColor: MaterialStateProperty.all(Colors.grey)),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.black,
    elevation: 0,
    shadowColor: Colors.transparent,
  ),
  colorScheme: const ColorScheme.dark(),
);
