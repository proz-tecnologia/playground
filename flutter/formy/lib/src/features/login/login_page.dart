import 'package:flutter/material.dart';
import 'package:formy/src/app.dart';
import 'package:formy/src/features/login/login_controller.dart';

import 'package:formy/src/shared/components/custom_avatar_component.dart';
import 'package:formy/src/shared/components/custom_divider_component.dart';
import 'package:formy/src/shared/components/custom_text_button_component.dart';

import 'package:formy/src/shared/widgets/custom_background_container_widget.dart';
import 'package:formy/src/shared/widgets/custom_elevated_buttom_widget.dart';
import 'package:formy/src/shared/widgets/custom_forgot_password.widget.dart';
import 'package:formy/src/shared/widgets/custom_text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = LoginController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value: App.themeNotifier.value == ThemeMode.dark,
            onChanged: (value) {
              setState(
                () {
                  value = App.themeNotifier.value == ThemeMode.dark;
                },
              );
              App.themeNotifier.value =
                  App.themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
            },
          )
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 44),
                  CustomTextFormFieldWidget(
                    fieldText: 'Email',
                    hintText: 'Enter your email',
                    isPassword: false,
                    controller: emailController,
                  ),
                  const SizedBox(height: 36),
                  CustomTextFormFieldWidget(
                    controller: passController,
                    fieldText: 'Password',
                    hintText: 'Enter your password',
                    isPassword: true,
                  ),
                  const CustomForgotPassWidget(),
                  const SizedBox(
                    height: 37,
                  ),
                  CustomEllevatedButtomWidget(
                    text: 'Login',
                    controller: loginController,
                    emailController: emailController,
                    passController: passController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextButtonComponent(),
                  const SizedBox(
                    height: 29,
                  ),
                  const CustomDividerComponent(),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomAvatarComponent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
