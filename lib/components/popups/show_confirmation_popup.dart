import 'package:dunkin_app/components/build/build_button.dart';
import 'package:dunkin_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void showConfirmationPopup(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.close, size: 24),
                ),
              ),
              SizedBox(height: 10),
              Lottie.asset(
                'assets/confirmation.json',
                width: 100,
                height: 100,
                fit: BoxFit.fill,
                repeat: false,
              ),
              SizedBox(height: 20),
              Text(
                "CONFIRMADO COM SUCESSO",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Seu número foi confirmado com sucesso.\nAgora você já pode aproveitar todos os recursos do app.",
                style: TextStyle(color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 150,
                child: buildButton(
                  "Fechar",
                  Colors.orange,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
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
