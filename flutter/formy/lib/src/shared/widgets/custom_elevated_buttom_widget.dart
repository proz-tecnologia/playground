import 'package:flutter/material.dart';

class CustomEllevatedButtomWidget extends StatelessWidget {
  final String text;

  const CustomEllevatedButtomWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
        ),
      ),
    );
  }
}
