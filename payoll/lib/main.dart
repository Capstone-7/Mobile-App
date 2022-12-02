import 'package:flutter/material.dart';
import 'package:payoll/providers/bottom_nav_bar_provider.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/all_products_screen/views/all_products_screen.dart';
import 'package:payoll/views/forgot_password_screen/views/forgot_password.dart';
import 'package:payoll/views/home_screen/views/home_screen.dart';
import 'package:payoll/views/login_screen/views/login_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding1_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding2_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding3_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding4_screen.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding5_screen.dart';
import 'package:payoll/views/payment_methods_screen/views/payment_methods_screen.dart';
import 'package:payoll/views/payment_screen/views/payment_screen.dart';
import 'package:payoll/views/pulsa_data_screen/views/pulsa_data_screen.dart';
import 'package:payoll/views/splash_screen/views/splash_screen.dart';
import 'package:payoll/views/transaction_status_screen/views/transaction_status_screen.dart';
import 'package:payoll/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

import 'views/change_password_screen/views/change_password_screen.dart';
import 'views/edit_account_screen/views/edit_account_screen.dart';
import 'views/otp_screen/views/otp_screen.dart';
import 'views/register_screen/views/register_screen.dart';
import 'views/status_success_screen/status_success_forgot_password_screen/views/status_success_forgot_password_screen.dart';
import 'views/status_success_screen/status_success_register_screen/views/status_success_register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavBarProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: const Color(Constant.mainColor),
        ),
        home: const SplashScreen(),
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          Onboarding1.routeName: (context) => const Onboarding1(),
          Onboarding2.routeName: (context) => const Onboarding2(),
          Onboarding3.routeName: (context) => const Onboarding3(),
          Onboarding4.routeName: (context) => const Onboarding4(),
          Onboarding5.routeName: (context) => const Onboarding5(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          RegisterScreen.routeName: (context) => const RegisterScreen(),
          ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
          OtpScreen.routeName: (context) => const OtpScreen(),
          ChangePasswordScreen.routeName: (context) => const ChangePasswordScreen(),
          StatusSuccessRegisterScreen.routeName: (context) => const StatusSuccessRegisterScreen(),
          StatusSuccessForgotPasswordScreen.routeName: (context) => const StatusSuccessForgotPasswordScreen(),
          AllProductsScreen.routeName: (context) => const AllProductsScreen(),
          PulsaDataScreen.routeName: (context) => const PulsaDataScreen(),
          PaymentScreen.routeName: (context) => PaymentScreen(),
          PaymentMethodsScreen.routeName: (context) =>
              const PaymentMethodsScreen(),
          TransactionStatusScreen.routeName: (context) =>
              TransactionStatusScreen(),
          EditAccountScreen.routeName: (context) => const EditAccountScreen(),
          
        },
      ),
    );
  }
}
