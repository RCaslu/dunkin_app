import 'package:flutter/material.dart';

import '../cards/product_card.dart';

Widget homePageProductsection(String columTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            productCard('assets/image.png', "Tradicionais"),
            productCard('assets/image (1).png', "Stick de pistache"),
            productCard('assets/image (2).png', "6 Donuts"),
            productCard('assets/image (3).png', "12 donuts"),
          ],
        ),
      ),
    ],
  );
}
