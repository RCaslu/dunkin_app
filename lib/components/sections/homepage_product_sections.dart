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
            productCard(),
            productCard(),
            productCard(),
            productCard(),
          ],
        ),
      ),
    ],
  );
}
