import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';

class CustomAvatarComponent extends StatelessWidget {
  const CustomAvatarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.white,
          child: Image.asset('assets/icons/gmailIcon.png'),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.white,
          child: Image.asset('assets/icons/facebookIcon.png'),
        ),
      ],
    );
  }
}
