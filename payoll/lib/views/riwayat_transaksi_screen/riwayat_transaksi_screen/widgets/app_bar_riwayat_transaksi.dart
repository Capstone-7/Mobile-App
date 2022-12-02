import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payoll/utils/constant.dart';



PreferredSizeWidget appBarRiwayatTransaksi(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(Constant.mainColor),
    title: Text(
      'Riwayat Transaksi',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Constant.fontBig),
    ),
    bottom: TabBar(
      
      tabs: [
      Tab(icon: Icon(FontAwesomeIcons.arrowDownWideShort,size: 14), text: 'Urutan',),
          Tab(icon: Icon(Icons.filter_alt_outlined, size: 14,),text: 'Filter', ),

    ]),
  );
}
