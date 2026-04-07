import 'package:flutter/material.dart';
import '../views/detail_screen.dart';
import '../utils/product_model.dart';

class AppNavigation {
  static void goToDetail(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailScreen(product: product),
      ),
    );
  }
}