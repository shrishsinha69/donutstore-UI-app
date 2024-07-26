import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// import '../util/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Combo Meal", "36", Colors.blue, "lib/images/burger1.png"],
    ["Cheese Burger", "45", Colors.red, "lib/images/burger2.png"],
    ["Chicken Burger", "184", Colors.purple, "lib/images/burger3.png"],
    ["Paneer Burger", "85", Colors.brown, "lib/images/burger4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}