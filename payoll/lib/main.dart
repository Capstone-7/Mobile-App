import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/all_products_screen/views/all_products_screen.dart';
import 'package:payoll/views/home_screen/views/home_screen.dart';
import 'package:payoll/views/login/views/login_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding1_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding2_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding3_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding4_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding5_screen.dart';
import 'package:payoll/views/status_berhasil/views/status_berhasil_register/status_berhasil_register.dart';

import 'views/register/views/register_screen.dart';

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
        fontFamily: 'Poppins',
        primaryColor: const Color(Constant.mainColor),
      ),
      home: const HomeScreen(),
      routes: {
        Onboarding1.routeName: (context) => const Onboarding1(),
        Onboarding2.routeName: (context) => const Onboarding2(),
        Onboarding3.routeName: (context) => const Onboarding3(),
        Onboarding4.routeName: (context) => const Onboarding4(),
        Onboarding5.routeName: (context) => const Onboarding5(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        StatusBerhasilRegister.routeName: (context) =>
            const StatusBerhasilRegister(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        AllProductsScreen.routeName: (context) => const AllProductsScreen(),
      },
    );
  }
}
