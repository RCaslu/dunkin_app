import 'package:dunkin_app/components/navBar.dart';
import 'package:dunkin_app/pages/cupons_page.dart';
import 'package:dunkin_app/pages/home_page.dart';
import 'package:dunkin_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const CuponsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[currentIndex]),
      bottomNavigationBar: CustomNavBar(
      currentIndex: currentIndex,
      onTap: (index) {
    setState(() {
      currentIndex = index;
        });
      },
    ),
    );
  }
}
