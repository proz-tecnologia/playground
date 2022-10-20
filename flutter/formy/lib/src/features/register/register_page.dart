import 'package:flutter/material.dart';
import 'package:formy/src/features/login/login_controller.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:formy/src/shared/widgets/custom_background_container_widget.dart';
import 'package:formy/src/shared/widgets/custom_elevated_buttom_widget.dart';
import 'package:formy/src/shared/widgets/custom_text_form_field_widget.dart';

//TODO: [FORMY][FIGMA] resultado esperado https://www.figma.com/file/JbPkBsdC7B2L8sptZla9mO/Login-%26-Register-(Community)?node-id=5%3A118

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = TextEditingController();
  final loginController = LoginController();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomBackgroundContainerWidget(text: 'Register'),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
              ),
              width: MediaQuery.of(context).size.width,
              color: isDark ? Colors.black45 : AppColors.white,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 69,
                  ),
                  CustomTextFormFieldWidget(
                      controller: controller,
                      fieldText: 'Name',
                      hintText: 'Your Name, e.g : John Doe'),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                      controller: controller,
                      fieldText: 'Email',
                      hintText: 'Your Email e.g : johndoe@gmail.com'),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                      controller: controller,
                      fieldText: 'Phone Number',
                      hintText: 'Your phone number e.g : +01 112 xxx xxx'),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                    controller: controller,
                    fieldText: 'Password',
                    hintText: 'Your password, at least 8 character',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomTextFormFieldWidget(
                    controller: controller,
                    fieldText: 'Confirm Password',
                    hintText: 'Retype your password',
                    isPassword: true,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  CustomEllevatedButtomWidget(
                      text: 'Save',
                      controller: loginController,
                      emailController: controller,
                      passController: controller),
                  const SizedBox(
                    height: 36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
