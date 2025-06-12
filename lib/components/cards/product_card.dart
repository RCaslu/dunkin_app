import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import '../../pages/product_detail_page.dart';

Widget productCard(String imagePath, {BuildContext? context}) {
  // Extract product name from image path
  String fileName = imagePath.split('\\').last.split('/').last;
  String productName = fileName.replaceAll('.png', '');

  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: () {
        if (context != null) {
          // Navigate to the product detail page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                imagePath: imagePath,
                productName: productName,
              ),
            ),
          );
        }
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 100,
                height: 80,
                fit: BoxFit.contain,
              ),
              Text(
                productName.toUpperCase(),
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 3),
              Text(
                "50% OFF",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Color(0xFFE38B3D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
