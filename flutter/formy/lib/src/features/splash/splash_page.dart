import 'package:flutter/material.dart';
import 'package:formy/src/features/splash/splash_controller.dart';
import 'package:formy/src/features/splash/splash_states.dart';
import 'package:formy/src/shared/constants/app_colors.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashController controller = SplashController();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((value) {
      controller.isAuthenticated().then((value) {
        if (value is SplashStateAuthenticated) {
          Navigator.of(context).pushReplacementNamed('/home');
        } else {
          Navigator.of(context).pushReplacementNamed('/login');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Lottie.asset('assets/animations/finance-surfer.json'),
      ),
    );
  }
}
