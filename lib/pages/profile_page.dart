import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Adjust the path if needed

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/pfpc.png'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Rafael Henry',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'rafael.henry@email.com',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'CPF: ***.***.789-00',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Data de nascimento: **/**/1990',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 20),
                Divider(thickness: 1, color: Colors.grey[300]),
                const SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.local_offer, color: Color(0xFFFF6E0C)),
                  title: Text(
                    'Meus Cupons',
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navegar para a página de cupons
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag, color: Color(0xFFE38B3D)),
                  title: Text(
                    'Meus Pedidos',
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // Navegar para a página de pedidos
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text('Sair', style: GoogleFonts.poppins(fontSize: 18)),
                  onTap: () {
                    // Implementar logout
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
