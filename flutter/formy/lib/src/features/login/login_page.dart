import 'package:flutter/material.dart';
import 'package:formy/src/shared/components/custom_avatar_component.dart';
import 'package:formy/src/shared/components/custom_divider_component.dart';
import 'package:formy/src/shared/components/custom_text_button_component.dart';
import 'package:formy/src/shared/theme/theme_manager.dart';

import 'package:formy/src/shared/widgets/custom_background_container_widget.dart';
import 'package:formy/src/shared/widgets/custom_elevated_buttom_widget.dart';
import 'package:formy/src/shared/widgets/custom_forgot_password.widget.dart';
import 'package:formy/src/shared/widgets/custom_text_form_field_widget.dart';

import '../../shared/constants/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ThemeManager _themeManager = ThemeManager();

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
                value: _themeManager.themeMode == ThemeMode.dark,
                onChanged: (value) {
                  _themeManager.toggleTheme(value);
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomBackgroundContainerWidget(text: 'Login'),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                ),
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 44),
                    CustomTextFormFieldWidget(
                        fieldText: 'Email',
                        hintText: 'Enter your email',
                        isPassword: false),
                    const SizedBox(height: 36),
                    CustomTextFormFieldWidget(
                      fieldText: 'Password',
                      hintText: 'Enter your password',
                      isPassword: true,
                    ),
                    const CustomForgotPassWidget(),
                    const SizedBox(
                      height: 37,
                    ),
                    const CustomEllevatedButtomWidget(text: 'Login'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextButtonComponent(),
                    const SizedBox(
                      height: 29,
                    ),
                    const CustomDividerComponent(),
                    const SizedBox(
                      height: 29,
                    ),
                    const CustomAvatarComponent(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
