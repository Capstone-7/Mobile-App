import 'dart:async';
import 'package:flutter/material.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding1_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'spalsh-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    openSplashScreen();
    super.initState();
  }

  openSplashScreen() async {
    var durasiSplashScreen = const Duration(seconds: 5);
    return Timer(
      durasiSplashScreen,
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Onboarding1(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_with_name.png',
            )
          ],
        ),
      ),
    );
  }
}
