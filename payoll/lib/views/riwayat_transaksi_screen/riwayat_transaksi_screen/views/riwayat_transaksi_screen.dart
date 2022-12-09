import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/profile_screen/views/profile_screen.dart';
import 'package:payoll/views/riwayat_transaksi_screen/riwayat_transaksi_screen/widgets/app_bar_riwayat_transaksi.dart';
import 'package:payoll/views/tab_bar_screen/riwayat_transaksi_tab_bar_screen/tab_bar_bottom_sheet_urutan_screen/views/tab_bar_bottom_sheet_urutan_screen.dart';

class RiwayatTransaksiScreen extends StatefulWidget {
  static String routeName = 'riwayat-transaksi-screen';
  const RiwayatTransaksiScreen({super.key});

  @override
  State<RiwayatTransaksiScreen> createState() => _RiwayatTransaksiScreenState();
}

class _RiwayatTransaksiScreenState extends State<RiwayatTransaksiScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBarRiwayatTransaksi(context),
        body: Center(child: Container(child: Text('Tidak ada pembaharuan data', style: TextStyle(color: Color(Constant.lineOr)),))),
      ),
    );
  }
}
