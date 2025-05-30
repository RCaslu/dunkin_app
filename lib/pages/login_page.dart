import 'package:dunkin_app/pages/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dunkin_app/pages/register_page.dart';
import 'package:dunkin_app/components/build/build_button.dart';
import 'package:dunkin_app/components/build/build_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkItem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Image.asset(
                  'assets/pagelogo.png',
                  width: double.infinity,
                  height: 130,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: RichText(
                        text: TextSpan(
                          text: 'EMAIL',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' *',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                buildInput("example@gmail.com"),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: RichText(
                        text: TextSpan(
                          text: 'SENHA',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: ' *',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                buildInput("senha123", isPassword: true),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Checkbox(
                      value: checkItem,
                      onChanged: (value) {
                        setState(() {
                          checkItem = value!;
                        });
                      },
                      activeColor: Color(0xFFC44B8D),
                    ),
                    Text("Lembrar de mim", style: GoogleFonts.poppins()),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 5),
                      child: RichText(
                        text: TextSpan(
                          text: "Esqueceu sua senha? ",
                          style: GoogleFonts.poppins(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "Clique aqui.",
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
                const SizedBox(height: 20),

                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: buildButton(
                    "ACESSAR",
                    Color(0xFFE38B3D),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerificationPage(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: buildButton(
                    "REGISTRAR",
                    Color(0xFFF20C90),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
