import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payoll/utils/constant.dart';

PreferredSizeWidget otpAppBarForgotPassword (BuildContext context){
  String routeName = 'forgot-password-app-bar';
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(FontAwesomeIcons.chevronLeft, color: Colors.black),),
    title: Row(
      children: [
        Text('Verifikasi Kode OTP',style: TextStyle(color: Colors.black, fontSize: Constant.fontBig, fontWeight: FontWeight.bold), )
      ],
    ),
  );
}