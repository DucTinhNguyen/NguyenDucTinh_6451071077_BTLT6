import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/profile_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    profile: (context) => ProfileScreen(),
  };
}