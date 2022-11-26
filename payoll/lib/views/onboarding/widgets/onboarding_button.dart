import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 50.0,
      child: ElevatedButton(
          onPressed: onPressed,
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Color(Constant.mainColor))),
          child: Text(
            'Lanjutkan',
            style: TextStyle(fontSize: Constant.fontBig),
          )),
    );
  }
}
