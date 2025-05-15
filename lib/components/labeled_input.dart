import 'package:dunkin_app/components/build/build_input.dart';
import 'package:flutter/material.dart';

Widget labeledInput(String label, String inputLabel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 5),
        child: RichText(
          text: TextSpan(
            text: label.toUpperCase(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
      buildInput(inputLabel),
    ],
  );
}
