import 'package:flutter/widgets.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imgPath;
  final Color color;
  const GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imgPath,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [Image.asset(imgPath)]),
    );
  }
}
