import 'package:flutter/material.dart';

class CuponsPage extends StatefulWidget {
  const CuponsPage({Key? key}) : super(key: key);

  @override
  State<CuponsPage> createState() => _CuponsPageState();
}

class _CuponsPageState extends State<CuponsPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final cupons = [
      {'title': '10% OFF', 'description': 'Get 10% off on your next order!'},
      {'title': 'Free Donut', 'description': 'Buy 2 donuts, get 1 free!'},
      {'title': '20% OFF', 'description': '20% off for orders above \$20.'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cupons'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cupons.length,
        itemBuilder: (context, index) {
          final cupon = cupons[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.card_giftcard, color: Colors.orange),
              title: Text(cupon['title']!),
              subtitle: Text(cupon['description']!),
            ),
          );
        },
      ),
    );
  }
}
