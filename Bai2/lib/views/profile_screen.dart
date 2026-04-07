import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Nhận dữ liệu từ Home
    final String username =
    ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Text(
          "Hello, $username",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}