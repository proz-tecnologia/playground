import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String fieldText;
  final String hintText;
  final IconButton? iconButton;
  final bool isPassword;

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
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldText,
          style: AppTextTheme.textField,
        ),
        TextFormField(
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
