import 'package:flutter/material.dart';
import 'package:formy/src/features/login/login_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    var navigation = Navigator.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              controller.logout();
              navigation.pushReplacementNamed('/login');
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'acessibility',
            icon: Icon(
              Icons.accessibility_new,
            ),
          ),
        ],
      ),
    );
  }
}
