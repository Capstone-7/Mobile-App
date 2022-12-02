import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/onboarding_screen/widgets/lanjutkan_button.dart';
import 'package:payoll/views/onboarding_screen/widgets/lewati_button.dart';
import '../widgets/pointer_bar.dart';
import 'onboarding2_screen.dart';

class Onboarding1 extends StatelessWidget {
  static const String routeName = 'onboarding-1';

  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: size.height * 0.4,
                      width: size.width * 0.8,
                      child: Image.asset(
                        'assets/images/onboarding/onboarding-1.png',
                      )),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'Easy Peasy',
                    style: TextStyle(
                        fontSize: Constant.fontExtraBig,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: SizedBox(
                      height: size.height * 0.07,
                      child: const Text(
                        'Don’t worry be happy, Transaksi pulsa, paket data, bayar tagihan, dan lainnya jadi gampang pake banget',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PointerBar(size: size, active: true),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      PointerBar(size: size, active: false),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      PointerBar(size: size, active: false),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      PointerBar(size: size, active: false),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      PointerBar(size: size, active: false),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  LanjutkanButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Onboarding2.routeName,
                      );
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const LewatiButton()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
