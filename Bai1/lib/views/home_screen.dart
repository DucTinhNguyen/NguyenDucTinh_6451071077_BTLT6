import 'package:flutter/material.dart';
import '../navigation/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.about);
          },
          child: Text("Go to About"),
        ),
      ),
    );
  }
}