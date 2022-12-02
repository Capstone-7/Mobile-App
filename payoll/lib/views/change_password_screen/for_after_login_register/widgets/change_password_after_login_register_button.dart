import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';

class ChangePasswordAfterLOginRegisterButton extends StatelessWidget {
  const ChangePasswordAfterLOginRegisterButton(
      {super.key, required this.onPressed});
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
          'Ubah'.toUpperCase(),
          style: TextStyle(
              fontSize: Constant.fontSemiRegular, fontWeight: FontWeight.w500),
        ));
  }
}