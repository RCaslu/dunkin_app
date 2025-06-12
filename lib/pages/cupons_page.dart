import 'package:dunkin_app/components/sections/cupons_product_sections.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuponsPage extends StatefulWidget {
  const CuponsPage({super.key});

  @override
  State<CuponsPage> createState() => _CuponsPageState();
}

class _CuponsPageState extends State<CuponsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  "CUPONS",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFFF6E0C),
                  ),
                ),
                Divider(color: Colors.grey, thickness: 2, height: 20),
                cuponsProductsection("DONUTS", context: context),
                cuponsProductsection("GELADOS", context: context),
                cuponsProductsection("BEBIDAS QUENTES", context: context),
                cuponsProductsection("BAKERY", context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
