import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payoll/utils/constant.dart';



PreferredSizeWidget appBarEditAccount(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(Constant.mainColor),
    leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(FontAwesomeIcons.chevronLeft, color: Colors.white),),
    title: Text(
      'Pengaturan Akun',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Constant.fontBig),
    ),
  );
}
