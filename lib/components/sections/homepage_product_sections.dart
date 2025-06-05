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
            productCard('assets/image.png'),
            productCard('assets/image (1).png'),
            productCard('assets/image (2).png'),
            productCard('assets/image (3).png'),
          ],
        ),
      ),
    ],
  );
}
