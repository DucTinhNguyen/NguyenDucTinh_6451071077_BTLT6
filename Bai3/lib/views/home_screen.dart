import 'package:flutter/material.dart';
import '../navigation/app_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AppNavigation.goToSettings(context);
          },
          child: const Text("Go to Settings"),
        ),
      ),
    );
  }
}