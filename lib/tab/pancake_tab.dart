import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// import '../util/donut_tile.dart';

class PancakeTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Blueberry", "36", Colors.blue, "lib/images/pancake.png"],
    ["Strawberry", "35", Colors.red, "lib/images/pancake (1).png"],
    ["Chocolate", "24", Colors.purple, "lib/images/pancakes (2).png"],
    ["Peach", "35", Colors.brown, "lib/images/pancake (2).png"],
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