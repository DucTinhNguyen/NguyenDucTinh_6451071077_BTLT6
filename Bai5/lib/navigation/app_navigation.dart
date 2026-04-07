import 'package:flutter/material.dart';
import '../views/pick_color_screen.dart';

class AppNavigation {
  static Future<Color?> goToPickColor(BuildContext context) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const PickColorScreen(),
      ),
    );
  }
}