import 'package:flutter/material.dart';
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
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE38B3D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    // Navigate to the next page or perform any action
                    // Navigator.pushReplacement(context, Home());
                  },
                  child: Text("FECHAR", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
