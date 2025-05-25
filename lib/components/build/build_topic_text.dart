import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildTopicText(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );
}