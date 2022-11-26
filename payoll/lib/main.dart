import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/home_screen/views/home_screen.dart';
import 'package:payoll/views/login/views/login_screen.dart';
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
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        StatusBerhasilRegister.routeName: (context) => const StatusBerhasilRegister(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
