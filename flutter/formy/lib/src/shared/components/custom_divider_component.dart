import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

class CustomDividerComponent extends StatelessWidget {
  const CustomDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: Divider(
            color: AppColors.gray,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Or login with',
            style: AppTextTheme.dividerText,
          ),
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
