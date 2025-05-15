import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Volta para a LoginPage
          },
          child: Text("Voltar para Login"),
        ),
      ),
    );
  }
}
