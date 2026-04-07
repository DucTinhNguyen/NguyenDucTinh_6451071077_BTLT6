import 'package:flutter/material.dart';
import '../utils/color_data.dart';

class PickColorScreen extends StatelessWidget {
  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick a Color"),
      ),
      body: ListView.builder(
        itemCount: ColorData.colors.length,
        itemBuilder: (context, index) {
          final item = ColorData.colors[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: item["color"],
            ),
            title: Text(item["name"]),
            onTap: () {
              Navigator.pop(context, item["color"]);
            },
          );
        },
      ),
    );
  }
}