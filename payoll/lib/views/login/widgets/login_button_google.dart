import 'package:flutter/material.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12.0),
            side: BorderSide(color: Color(0xFFCFCFCF)),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 28.0,
                width: 28.0,
                child: Image.asset(
                  'assets/images/google.png',
                )),
            Text(
              ' GOOGLE',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
