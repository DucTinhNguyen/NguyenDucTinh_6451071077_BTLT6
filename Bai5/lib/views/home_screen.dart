import 'package:flutter/material.dart';
import '../navigation/app_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color selectedColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Color Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Box màu
            Container(
              width: 150,
              height: 150,
              color: selectedColor,
            ),

            const SizedBox(height: 20),

            // Nút chọn màu
            ElevatedButton(
              onPressed: () async {
                final result =
                await AppNavigation.goToPickColor(context);

                if (result != null) {
                  setState(() {
                    selectedColor = result;
                  });
                }
              },
              child: const Text("Pick Color"),
            )
          ],
        ),
      ),
    );
  }
}