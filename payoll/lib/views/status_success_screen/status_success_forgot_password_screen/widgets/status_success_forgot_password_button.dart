import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';

class StatusSuccessForgotPasswordButton extends StatelessWidget {
  const StatusSuccessForgotPasswordButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12.0),
            backgroundColor: Color(Constant.mainColor),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed,
        child: Text(
          'Kembali Ke Masuk'.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ));
  }
}
