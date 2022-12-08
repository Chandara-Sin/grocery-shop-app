import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 48,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Good Morning"),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                  fontSize: 36, fontWeight: FontWeight.bold)),
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Fresh Items",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => const GroceryItemTile())))
      ])),
    );
  }
}
