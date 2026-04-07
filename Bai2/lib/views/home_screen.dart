import 'package:flutter/material.dart';
import '../navigation/routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: "Enter username",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Tên không được để trống";
                  }
                  if (value.trim().length < 3) {
                    return "Tên phải có ít nhất 3 ký tự";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String username = _controller.text.trim();

                    Navigator.pushNamed(
                      context,
                      AppRoutes.profile,
                      arguments: username,
                    );
                  }
                },
                child: Text("Go to Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}