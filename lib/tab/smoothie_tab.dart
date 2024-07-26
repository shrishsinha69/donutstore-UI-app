import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// import '../util/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Green Apple", "36", Colors.blue, "lib/images/juice.png"],
    ["BlueBerry", "45", Colors.red, "lib/images/cocktail.png"],
    ["Orange", "84", Colors.purple, "lib/images/beverage.png"],
    ["Lemon", "95", Colors.brown, "lib/images/beverage (1).png"],
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