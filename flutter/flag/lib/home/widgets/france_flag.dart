import 'package:flutter/material.dart';

class FranceFlagWidget extends StatelessWidget {
  const FranceFlagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.indigo,
            Colors.white,
            Colors.white,
            Colors.red,
            Colors.red,
          ],
          stops: [
            0.33,
            0.33,
            0.66,
            0.66,
            0.99,
          ],
        ),
      ),
    );
  }
}
