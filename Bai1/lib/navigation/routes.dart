import 'package:flutter/material.dart';
import '../views/home_screen.dart';
import '../views/about_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomeScreen(),
    about: (context) => AboutScreen(),
  };
}