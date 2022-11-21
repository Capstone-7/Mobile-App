import 'package:flutter/material.dart';
import 'package:payoll/views/login/views/login_screen.dart';
import 'package:payoll/views/onboarding/views/onboarding2_screen.dart';
import 'package:payoll/views/onboarding/views/onboarding3_screen.dart';
import 'package:payoll/views/onboarding/views/onboarding4_screen.dart';
import 'package:payoll/views/onboarding/views/onboarding5_screen.dart';
import 'package:payoll/views/onboarding/views/onboarding1_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff396EB0),
      ),
      home: const Onboarding1(),
      routes: {
        Onboarding2.routeName: (context) => const Onboarding2(),
        Onboarding3.routeName: (context) => const Onboarding3(),
        Onboarding4.routeName: (context) => const Onboarding4(),
        Onboarding5.routeName: (context) => const Onboarding5(),
        LoginScreen.routeName: (context) =>  LoginScreen(),
      },
    );
  }
}
