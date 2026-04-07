import 'package:flutter/material.dart';
import '../views/settings_screen.dart';

class AppNavigation {
  static void goToSettings(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SettingsScreen(),
      ),
    );
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}