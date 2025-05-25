import 'package:dunkin_app/components/build/build_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dunkin_app/components/build/build_topic_text.dart';
import 'package:dunkin_app/components/build/build_detail_text.dart';

void showPrivacyPolicyPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Política de Privacidade',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Bem-vindo ao Dunkin App! Sua privacidade é importante para nós. Esta política explica como coletamos e usamos seus dados:',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                const SizedBox(height: 15),
                buildTopicText('Dados que coletamos:'),
                buildDetailText(
                  '• Nome, e-mail e número de telefone para sua conta\n'
                  '• Localização para entregas e encontrar lojas próximas\n'
                  '• Histórico de pedidos para melhorar sua experiência\n'
                  '• Preferências de produtos para recomendações personalizadas',
                ),
                const SizedBox(height: 15),
                buildTopicText('Como usamos seus dados:'),
                buildDetailText(
                  '• Processar seus pedidos e entregas\n'
                  '• Enviar promoções e novidades exclusivas\n'
                  '• Melhorar nossos produtos e serviços\n'
                  '• Gerenciar seu programa de fidelidade',
                ),
                const SizedBox(height: 15),
                buildTopicText('Seus direitos:'),
                buildDetailText(
                  '• Acessar seus dados pessoais\n'
                  '• Solicitar correções ou exclusão\n'
                  '• Cancelar comunicações de marketing\n'
                  '• Exportar seus dados',
                ),
                const SizedBox(height: 20),
                buildDetailText(
                  'Ao usar nosso app, você concorda com nossa política de privacidade. Para mais informações, acesse nosso site.',
                  isItalic: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: buildButton(
                    "ACEITAR",
                    Colors.orange,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
