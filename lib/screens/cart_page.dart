import 'package:flutter/material.dart';
import 'package:grocery_shop_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Consumer<CartModel>(
        builder: ((context, value, child) => Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(value.cartItems[index][0]),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
