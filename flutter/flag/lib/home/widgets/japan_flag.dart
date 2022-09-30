import 'package:flutter/material.dart';

class JapanFlagWidget extends StatelessWidget {
  ///Widget personalizado do tipo Stateless que representa a bandeira do Japão.
  const JapanFlagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(150.0),
      ),
    );
  }
}
