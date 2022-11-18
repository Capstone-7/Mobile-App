import 'package:flutter/material.dart';
import 'package:payoll/views/onboarding/views/onboarding_1.dart';
import 'package:payoll/views/onboarding/views/onboarding_2.dart';
import 'package:payoll/views/onboarding/views/onboarding_3.dart';
import 'package:payoll/views/onboarding/views/onboarding_4.dart';
import 'package:payoll/views/onboarding/views/onboarding_5.dart';

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
      },
    );
  }
}
