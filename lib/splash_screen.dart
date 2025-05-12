import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dunkin_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: LottieBuilder.asset('assets/splash.json', fit: BoxFit.cover, width: MediaQuery.of(context).size.width,),
      ),
      nextScreen: const LoginPage(),
      splashIconSize: 1200,
      backgroundColor: Colors.white,
    );
  }
}
