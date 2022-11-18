import 'package:flutter/material.dart';

import '../widgets/onboarding_button.dart';
import '../widgets/pointer_bar.dart';
import 'onboarding_5.dart';

class Onboarding4 extends StatelessWidget {
  static const String routeName = 'onboarding-4';

  const Onboarding4({Key? key}) : super(key: key);

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
                  child: Image.asset('assets/images/onboarding-4.png')),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Text(
                'Anti Admin Club',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  'Gak ada biaya tambahan buat kamu yang lagi bayar tagihan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
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
                  PointerBar(size: size, active: true),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  PointerBar(size: size, active: false),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              OnboradingButton(
                onPressed: () {
                  Navigator.pushNamed(context, Onboarding5.routeName);
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Lewati',
                  style: TextStyle(
                      color: Color(
                        0xff396EB0,
                      ),
                      fontSize: 20.0,
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
