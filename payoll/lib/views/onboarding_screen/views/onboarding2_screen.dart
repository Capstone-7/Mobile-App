import 'package:flutter/material.dart';

import '../../../utils/constant.dart';
import '../../../widgets/bottom_nav_bar.dart';
import '../../login_screen/views/login_screen.dart';
import '../widgets/onboarding_button.dart';
import '../widgets/pointer_bar.dart';
import 'onboarding3_screen.dart';

class Onboarding2 extends StatelessWidget {
  static const String routeName = 'onboarding-2';

  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.028,
              ),
              SizedBox(
                  height: size.height * 0.4,
                  width: size.width * 0.8,
                  child: Image.asset(
                    'assets/images/onboarding/onboarding-2.png',
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Text(
                'Pas Dikantong',
                style: TextStyle(fontSize: Constant.fontExtraBig, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: SizedBox(
                  height: size.height * 0.07,
                  child: const Text(
                    'Buat kamu yang spesial nya melebihi martabak, Nikmati produk dengan harga terbaik dan promo - promo yang menarik perhatian kantong kamu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.13),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PointerBar(size: size, active: false),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
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
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              OnboardingButton(
                onPressed: () {
                  Navigator.pushNamed(context, Onboarding3.routeName);
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  // Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const BottomNavBar(
                  //           pageIndex: 0,
                  //         )),
                  //         (route) => false);
                },
                child: const Text(
                  'Lewati',
                  style: TextStyle(
                      color: Color(
                        0xff396EB0,
                      ),
                      fontSize: Constant.fontSemiBig,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
