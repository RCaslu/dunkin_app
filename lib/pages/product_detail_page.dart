import 'dart:math';

import 'package:dunkin_app/components/popups/cupon_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatefulWidget {
  final String imagePath;
  final String productName;

  const ProductDetailPage({
    Key? key,
    required this.imagePath,
    required this.productName,
  }) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String selectedSize = 'M';
  String generatedCode = '';

  String _generateRandomCode() {
    final rand = Random();
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return List.generate(
      8,
      (index) => chars[rand.nextInt(chars.length)],
    ).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFFFF6E0C)),
        title: Text(
          widget.productName.toUpperCase(),
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF6E0C),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Center(
                  child: Image.asset(widget.imagePath, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 10),

              // Tamanho
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    ['S', 'M', 'XL'].map((size) {
                      final isSelected = selectedSize == size;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ChoiceChip(
                          label: Text(size),
                          selected: isSelected,
                          onSelected:
                              (_) => setState(() => selectedSize = size),
                          selectedColor: Colors.orange,
                          labelStyle: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
              ),

              const SizedBox(height: 20),

              // Descrição
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      "Sobre",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Nosso clássico Iced Coffee é feito com grão 100% arábica, preparado fresco e servido com gelo para garantir energia e sabor em cada gole. Customize com seus sabores e leites favoritos — perfeito para qualquer momento do dia.",
                      style: GoogleFonts.poppins(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),

                    // Botão Garantir Cupom
                    ElevatedButton(
                      onPressed: () => showCuponPopup(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF6E0C),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "GARANTIR CUPOM",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
