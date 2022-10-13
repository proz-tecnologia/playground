import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  AppTextTheme._();
  static const TextStyle caption = TextStyle(
    color: AppColors.white,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700,
    fontSize: 48,
  );
  static const TextStyle hintTextField = TextStyle(
    color: AppColors.gray,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  static const TextStyle textField = TextStyle(
    color: AppColors.black,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );
  static const TextStyle blackText = TextStyle(
    color: AppColors.black,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const TextStyle checkboxLogin = TextStyle(
    color: AppColors.gray,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const TextStyle hereButton = TextStyle(
    color: AppColors.primary,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const TextStyle dividerText = TextStyle(
    color: AppColors.gray,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );
  static const TextStyle textButton = TextStyle(
    color: AppColors.white,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );
}
