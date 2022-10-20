import 'package:flutter/material.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/constants/app_text_theme.dart';

class CustomBackgroundContainerWidget extends StatefulWidget {
  final String text;
  const CustomBackgroundContainerWidget({super.key, required this.text});

  @override
  State<CustomBackgroundContainerWidget> createState() =>
      _CustomBackgroundContainerWidgetState();
}

class _CustomBackgroundContainerWidgetState
    extends State<CustomBackgroundContainerWidget> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      alignment: AlignmentDirectional.centerStart,
      color: isDark ? Colors.black45 : AppColors.primary,
      width: MediaQuery.of(context).size.width,
      height: 175,
      child: Padding(
        padding: const EdgeInsets.only(left: 28),
        child: Text(
          widget.text,
          style: AppTextTheme.caption
              .copyWith(color: isDark ? AppColors.primary : AppColors.white),
        ),
      ),
    );
  }
}
