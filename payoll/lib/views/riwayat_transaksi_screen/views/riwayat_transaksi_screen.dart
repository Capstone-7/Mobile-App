import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/riwayat_transaksi_screen/widgets/app_bar_riwayat_transaksi.dart';

class RiwayatTransaksiScreen extends StatefulWidget {
  static String routeName = 'riwayat-transaksi-screen';

  const RiwayatTransaksiScreen({super.key});

  @override
  State<RiwayatTransaksiScreen> createState() => _RiwayatTransaksiScreenState();
}

class _RiwayatTransaksiScreenState extends State<RiwayatTransaksiScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBarRiwayatTransaksi(context),
        body: const Center(
            child: Text(
          'Tidak ada pembaharuan data',
          style: TextStyle(color: Color(Constant.lineOr)),
        )),
      ),
    );
  }
}
