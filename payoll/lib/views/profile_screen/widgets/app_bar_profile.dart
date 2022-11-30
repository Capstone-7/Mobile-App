import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payoll/utils/constant.dart';

PreferredSizeWidget appBarProfile(BuildContext context) {
  return AppBar(
    backgroundColor: Color(Constant.mainColor),
    title: Text(
      'Profile',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Constant.fontBig),
    ),
    
  );
}
