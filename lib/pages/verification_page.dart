import 'package:dunkin_app/components/build/build_button.dart';
import 'package:dunkin_app/components/popups/show_confirmation_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => {Navigator.pop(context)},
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.black, size: 30),
                  Text(
                    'Voltar',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Image.asset(
              'assets/pagelogo.png',
              width: double.infinity,
              height: 130,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 50),
            Text(
              'VERIFICAÇÃO NECESSÁRIA',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                textAlign: TextAlign.center,
                'Enviamos um código de 4 dígitos por SMS para o seu número. Digite-o abaixo para continuar.',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color(0xFF7A7A7A),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Verification Code',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: RichText(
                      text: TextSpan(
                        text: "Não recebeu o código? ",
                        style: GoogleFonts.poppins(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Reenviar',
                            style: GoogleFonts.poppins(
                              color: Color(0xFFC44B8D),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 150,
              child: buildButton(
                "ENVIAR",
                Color(0xFFE38B3D),
                onPressed: () {
                showConfirmationPopup(context)
              ;
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
