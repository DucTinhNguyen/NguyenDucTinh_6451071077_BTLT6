import 'package:flutter/material.dart';
import '../utils/product_model.dart';
import '../navigation/app_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Danh sách mẫu
  List<Product> get products => [
    Product(name: "iPhone 15", price: 25000000),
    Product(name: "Samsung S24", price: 22000000),
    Product(name: "Xiaomi 14", price: 18000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(p.name),
              subtitle: Text("${p.price} VND"),
              onTap: () {
                AppNavigation.goToDetail(context, p);
              },
            ),
          );
        },
      ),
    );
  }
}