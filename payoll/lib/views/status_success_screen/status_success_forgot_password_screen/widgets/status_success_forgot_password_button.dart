import 'package:flutter/material.dart';

class StatusSuccessForgotPasswordButton extends StatelessWidget {
  const StatusSuccessForgotPasswordButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12.0),
            backgroundColor: Color(0xFF396EB0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed,
        child: Text(
          'Kembali Ke Masuk'.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ));
  }
}
