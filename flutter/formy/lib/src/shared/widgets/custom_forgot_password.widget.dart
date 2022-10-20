import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

class CustomForgotPassWidget extends StatefulWidget {
  const CustomForgotPassWidget({super.key});

  @override
  State<CustomForgotPassWidget> createState() => _CustomForgotPassWidgetState();
}

class _CustomForgotPassWidgetState extends State<CustomForgotPassWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              side: const BorderSide(),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
              value: isChecked,
            ),
            const Text(
              'Stay logged in ?',
              style: AppTextTheme.checkboxLogin,
            ),
          ],
        ),
        const Text(
          'Forgot Password?',
          style: AppTextTheme.checkboxLogin,
        ),
      ],
    );
  }
}
