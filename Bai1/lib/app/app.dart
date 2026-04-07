import 'package:flutter/material.dart';
import '../navigation/routes.dart';
import '../views/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Company App',
      initialRoute: '/',
      routes:  AppRoutes.routes,
    );
  }
}