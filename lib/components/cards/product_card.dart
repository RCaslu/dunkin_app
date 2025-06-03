import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget productCard() {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/i1.png'),
            Text(
              "Ninho com avelã".toUpperCase(),
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "50% OFF",
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Color(0xFFE38B3D),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
