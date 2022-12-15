import 'dart:async';
import 'package:flutter/material.dart';
import 'package:payoll/views/onboarding_screen/views/onboarding1_screen.dart';
import 'package:payoll/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

import '../../../providers/product_provider.dart';
import '../../../providers/profile_provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash-screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    openSplashScreen();
    Future.delayed(
      Duration.zero,
      () {
        final profileProvider = Provider.of<ProfileProvider>(context, listen: false);
        profileProvider.fetchProfile();
        final productProvider =
            Provider.of<ProductProvider>(context, listen: false);
        productProvider.fetchProductByCategory('pulsa');
        productProvider.fetchProductByCategory('data');
      },
    );
    super.initState();
  }

  openSplashScreen() async {
    var durasiSplashScreen = const Duration(seconds: 2);
    return Timer(
      durasiSplashScreen,
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomNavBar(
                pageIndex: 0,
              ),
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
