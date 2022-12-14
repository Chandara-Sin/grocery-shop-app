import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/models/cart_model.dart';
import 'package:grocery_shop_app/screens/cart_page.dart';
import 'package:provider/provider.dart';

import '../widgets/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Good Morning,",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(
              thickness: 2,
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Fresh Items",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Expanded(
            child: Consumer<CartModel>(
              builder: ((context, value, child) => GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemBuilder: ((context, index) => GroceryItemTile(
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imgPath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                        )),
                  )),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CartPage())),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.shopping_bag),
      ),
    );
  }
}
