import 'package:dunkin_app/components/labeled_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dunkin_app/components/build/build_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkItem = false;
  String data = "Escolha uma data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
              Image.asset('assets/pagelogo.png', width: 550, height: 150),
              labeledInput("Nome", "John Doe"),
              const SizedBox(height: 20),
              labeledInput("Email", "example@gmail.com"),
              const SizedBox(height: 8),
              labeledInput("CPF", "000.000.000-00"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 5),
                    child: RichText(
                      text: TextSpan(
                        text: 'DATA DE NASCIMENTO',
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
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_today, color: Colors.black),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        data,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      data =
                          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                      print(data);
                    });
                  } else {
                    print("Data não selecionada");
                  }
                },
              ),
              const SizedBox(height: 20),
              labeledInput("Celular", "(00) 00000-0000"),
              const SizedBox(height: 20),
              labeledInput("Senha", "*******"),
              const SizedBox(height: 20),
              labeledInput("Confirme sua senha", "*******"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checkItem,
                    onChanged: (value) {
                      setState(() {
                        checkItem = value!;
                        print('Checkbox is $checkItem');
                      });
                    },
                    activeColor: Color(0xFFC44B8D),
                  ),
                  Text(
                    "Aceito os",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      print("Política de privacidade");
                    },
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        "Termos de uso",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFC44B8D),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 150,
                child: buildButton(
                  "SALVAR",
                  Color(0xFFE38B3D),
                  onPressed: () {
                    print("Salvar");
                  },
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
