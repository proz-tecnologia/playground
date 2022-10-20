import 'package:flutter/material.dart';
import 'package:formy/src/features/login/login_states.dart';

import '../../features/login/login_controller.dart';

class CustomEllevatedButtomWidget extends StatelessWidget {
  final String text;
  final LoginController controller;
  final TextEditingController emailController;
  final TextEditingController passController;

  const CustomEllevatedButtomWidget(
      {super.key,
      required this.text,
      required this.controller,
      required this.emailController,
      required this.passController});

  @override
  Widget build(BuildContext context) {
    var navigation = Navigator.of(context);
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final result = await controller.authenticate(
              emailController.text, passController.text);
          if (result is LoginStateError) {
            showDialog(
              context: context,
              builder: ((context) {
                return Center(child: Text(result.message));
              }),
            );
          }

          if (result is LoginStateSucess) {
            navigation.pushReplacementNamed('/home');
          }
        },
        child: Text(
          text,
        ),
      ),
    );
  }
}
