import 'dart:math';

import 'package:dunkin_app/components/build/build_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

void showCuponPopup(BuildContext context) {
  final code = _generateRandomCode();

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, size: 24),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "CUPOM ATIVADO COM SUCESSO!",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              QrImageView(data: code, version: QrVersions.auto, size: 150.0),
              const SizedBox(height: 8),
              Text(
                "Código: $code",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Mostre este QR Code no caixa e aproveite sua oferta exclusiva.",
                style: GoogleFonts.poppins(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Válido por tempo limitado",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 180,
                child: buildButton(
                  "Fechar",
                  Colors.orange,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

String _generateRandomCode() {
  const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final rand = Random();
  return List.generate(8, (_) => chars[rand.nextInt(chars.length)]).join();
}
