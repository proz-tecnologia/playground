import 'dart:developer';

import 'package:flutter/material.dart';

import '../constants/app_text_theme.dart';

class CustomTextButtonComponent extends StatelessWidget {
  const CustomTextButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account? Register',
            style: AppTextTheme.blackText),
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
