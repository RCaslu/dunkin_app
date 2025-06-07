import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cards/product_card.dart';

Widget cuponsProductsection(String columTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          columTitle.toUpperCase(),
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Color(0xFFF20C90),
          ),
        ),
      ),
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
