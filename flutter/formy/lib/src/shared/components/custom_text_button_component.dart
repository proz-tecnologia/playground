import 'dart:developer';

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_theme.dart';

class CustomTextButtonComponent extends StatefulWidget {
  const CustomTextButtonComponent({super.key});

  @override
  State<CustomTextButtonComponent> createState() =>
      _CustomTextButtonComponentState();
}

class _CustomTextButtonComponentState extends State<CustomTextButtonComponent> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? Register',
          style: AppTextTheme.blackText
              .copyWith(color: isDark ? AppColors.white : AppColors.black),
        ),
        TextButton(
          onPressed: () {
            log('Press the button!');
            Navigator.of(context).pushNamed('/register');
          },
          child: const Text('here', style: AppTextTheme.hereButton),
        ),
      ],
    );
  }
}
