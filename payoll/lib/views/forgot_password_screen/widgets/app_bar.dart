import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payoll/utils/constant.dart';

PreferredSizeWidget appBar (BuildContext context){
  String routeName = 'app-bar';
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(onPressed: () => Navigator.popAndPushNamed(context, routeName), icon: Icon(FontAwesomeIcons.chevronLeft, color: Colors.black),),
    title: Row(
      children: [
        Text('Lupa Kata Sandi',style: TextStyle(color: Colors.black, fontSize: Constant.fontBig, fontWeight: FontWeight.bold), )
      ],
    ),
  );
}