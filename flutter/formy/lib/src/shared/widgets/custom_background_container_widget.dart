import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

class CustomBackgroundContainerWidget extends StatelessWidget {
  final String text;
  const CustomBackgroundContainerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      color: AppColors.primary,
      width: MediaQuery.of(context).size.width,
      height: 175,
      child: Padding(
        padding: const EdgeInsets.only(left: 28),
        child: Text(
          text,
          style: AppTextTheme.caption,
        ),
      ),
    );
  }
}
