import 'package:flutter/material.dart';

import '../cards/product_card.dart';

// Lists of product images by category
final Map<String, List<String>> productCategories = {
  'DONUTS': [
    'assets/images/tradicional.png',
    'assets/images/ferrerorocher.png',
    'assets/images/stickdepistache.png',
    'assets/images/6 donuts.png',
    'assets/images/12 donuts.png',
    'assets/images/25 mini donuts.png',
    'assets/images/Duas caixas de 12 donuts.png',
    'assets/images/baldee25minidonuts.png',
  ],
  'BAKERY': [
    'assets/images/paodequeijo.png',
    'assets/images/paopizza.png',
    'assets/images/croissant.png',
    'assets/images/croissantcreamchese.png',
    'assets/images/croissantpeitodeperu.png',
    'assets/images/croissantpresuntoqueijo.png',
    'assets/images/folhadodefrango.png',
    'assets/images/folhadopresuntoqueijo.png',
    'assets/images/baguel.png',
    'assets/images/bagelpeitodeperu.png',
    'assets/images/bagelpresuntoqueijo.png',
  ],
  'BEBIDAS QUENTES': [
    'assets/images/dunkinoriginalmd.png',
    'assets/images/cafélatemd.png',
    'assets/images/café latte baunilhamd.png',
    'assets/images/capuccinomd.png',
    'assets/images/caramelomachiatomd.png',
    'assets/images/machiatomd.png',
    'assets/images/dunkacinnomd.png',
    'assets/images/chocolatequentemd.png',
  ],
  'GELADOS': [
    'assets/images/iceddunkin.png',
    'assets/images/icedlatte.png',
    'assets/images/icedcaramelo.png',
    'assets/images/icedmachiattomd.png',
    'assets/images/icedtea.png',
    'assets/images/chocolategeladomd.png',
    'assets/images/refreshermd.png',
    'assets/images/smoothiemd.png',
    'assets/images/ninhocomavela.png',
  ],
};

Widget homePageProductsection(String columTitle, {BuildContext? context}) {
  final List<String> products =
      productCategories[columTitle.toUpperCase()] ?? [];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:
              products
                  .map((imagePath) => productCard(imagePath, context: context))
                  .toList(),
        ),
      ),
    ],
  );
}
