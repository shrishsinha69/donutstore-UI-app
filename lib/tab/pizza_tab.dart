import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// import '../util/donut_tile.dart';

class PizzaTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["FarmHouse Pizza", "36", Colors.blue, "lib/images/pizza (1).png"],
    ["Tomato Pizza", "45", Colors.red, "lib/images/pizza (2).png"],
    ["Peperoni Pizza", "84", Colors.purple, "lib/images/pizza (3).png"],
    ["Panner Pizza", "95", Colors.brown, "lib/images/pizza (4).png"],
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