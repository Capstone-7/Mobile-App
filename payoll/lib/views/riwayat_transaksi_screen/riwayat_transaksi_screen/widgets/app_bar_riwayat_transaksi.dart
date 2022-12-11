import 'package:expand_tap_area/expand_tap_area.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/profile_screen/views/profile_screen.dart';
import 'package:payoll/views/tab_bar_screen/riwayat_transaksi_tab_bar_screen/tab_bar_bottom_sheet_filter_screen/views/filter_pilih_tanggal_screen/filter_pilihan_tanggal_screen.dart';
import 'package:payoll/views/tab_bar_screen/riwayat_transaksi_tab_bar_screen/tab_bar_bottom_sheet_urutan_screen/views/tab_bar_bottom_sheet_urutan_screen.dart';

import '../../../tab_bar_screen/riwayat_transaksi_tab_bar_screen/tab_bar_bottom_sheet_filter_screen/views/filter_screen/filter_screen.dart';

PreferredSizeWidget tabBarRiwayatTransaksi(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return TabBar(indicatorColor: Colors.transparent, tabs: [
    ExpandTapWidget(
      tapPadding: EdgeInsets.all(25.0),
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          context: context,
          builder: (context) => BottomSheetUrutanScreen(),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tab(
              icon: Icon(
            FontAwesomeIcons.arrowDownWideShort,
            size: 20,
            color: Color(Constant.mainColor),
          )),
          SizedBox(
            width: size.width * 0.020,
          ),
          Text(
            'Urutan',
            style: TextStyle(
              fontSize: Constant.fontSemiRegular,
              color: Color(Constant.mainColor),
            ),
          ),
        ],
      ),
    ),
    ExpandTapWidget(
      tapPadding: EdgeInsets.all(25.0),
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          context: context,
          builder: (context) => BottomSheetFilterScreen(),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tab(
              icon: Icon(
            FontAwesomeIcons.filter,
            size: 20,
            color: Color(Constant.mainColor),
          )),
          SizedBox(
            width: size.width * 0.020,
          ),
          Text(
            'Filter',
            style: TextStyle(
              fontSize: Constant.fontSemiRegular,
              color: Color(Constant.mainColor),
            ),
          ),
        ],
      ),
    ),
  ]);
}

PreferredSizeWidget appBarRiwayatTransaksi(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(100.0),
    child: AppBar(
        elevation: 2,
        backgroundColor: Color(Constant.mainColor),
        title: Text(
          'Riwayat Transaksi',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: Constant.fontBig),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Material(
            color: Colors.white,
            child: tabBarRiwayatTransaksi(context),
          ),
        )),
  );
}