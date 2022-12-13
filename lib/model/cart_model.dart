import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "assets/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/water.png", Colors.blue],
  ];

  get shopItems => _shopItems;
}
