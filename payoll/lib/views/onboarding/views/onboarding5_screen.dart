import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/login/views/login_screen.dart';

import '../widgets/onboarding_button.dart';
import '../widgets/pointer_bar.dart';

class Onboarding5 extends StatelessWidget {
  static const String routeName = 'onboarding-5';

  const Onboarding5({Key? key}) : super(key: key);

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
                    'assets/images/onboarding/onboarding-5.png',
                  )),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Self Reward',
                style: TextStyle(
                    fontSize: Constant.fontExtraBig, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: SizedBox(
                  height: size.height * 0.05,
                  child: Text(
                    'Nikmatin Reward dan Voucher harta karun dari kita yang haqiqi tanpa ada bayaran apapun ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Constant.fontTitleOnboarding,
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
                  PointerBar(size: size, active: true),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              OnboardingButton(
                onPressed: () {
                  // Navigator.pushNamed(context, Onboarding3.routeName);
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
                child: Text(
                  'Lewati',
                  style: TextStyle(
                      color: Color(
                        0xff396EB0,
                      ),
                      fontSize: Constant.semiBig,
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
