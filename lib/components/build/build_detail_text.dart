import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildDetailText(String text, {bool isItalic = false}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        color: Colors.black87,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      ),
    ),
  );
}