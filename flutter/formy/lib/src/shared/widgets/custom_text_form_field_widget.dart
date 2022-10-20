import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

import '../../app.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String fieldText;
  final String hintText;
  final IconButton? iconButton;
  final bool isPassword;
  final TextEditingController controller;

  final Widget visibilityButtoun = IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.visibility_rounded,
    ),
  );

  CustomTextFormFieldWidget({
    super.key,
    required this.fieldText,
    required this.hintText,
    this.iconButton,
    this.isPassword = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldText,
          style: App.themeNotifier.value == ThemeMode.light
              ? AppTextTheme.textField
              : AppTextTheme.textField.copyWith(
                  color: AppColors.white,
                ),
        ),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: isPassword ? visibilityButtoun : iconButton,
          ),
        ),
      ],
    );
  }
}
