import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:payoll/views/login_screen/views/login_screen.dart';

import '../../../../utils/constant.dart';

class StatusBerhasilRegister extends StatefulWidget {
  static String routeName = 'statusberhasilregister';
  const StatusBerhasilRegister({super.key});

  @override
  State<StatusBerhasilRegister> createState() => _StatusBerhasilRegisterState();
}

class _StatusBerhasilRegisterState extends State<StatusBerhasilRegister>
    with SingleTickerProviderStateMixin {
  late AnimationController checkLottieController;

  @override
  void initState() {
    openStatusBerhasilRegister();

    checkLottieController = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    checkLottieController.dispose();
    super.dispose();
  }

  openStatusBerhasilRegister() async {
    var durasiStatusBerhasil = const Duration(seconds: 6);
    return Timer(durasiStatusBerhasil, () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                'assets/animation/check.json',
                height: size.height * 0.300,
                controller: checkLottieController,
                onLoaded: (composition) {
                  checkLottieController.forward();
                },
              ),
              Text('Berhasil',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: size.height * 0.012,
              ),
              Text(
                  'Selamat anda telah menjadi pengguna PayOll, Happy transaksi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Constant.fontRegular,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
