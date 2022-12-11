import 'package:flutter/material.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/views/home_screen/widgets/transaction_history_section.dart';
import 'package:payoll/views/profile_screen/views/profile_screen.dart';
import 'package:payoll/views/transaction_history_screen/widgets/app_bar_transaction_history_widget.dart';
import 'package:payoll/views/transaction_history_screen/widgets/empty_transaction_history_widget.dart';
import 'package:payoll/views/transaction_history_screen/widgets/transaction_history_section_widget.dart';

class TransactionHistoryScreen extends StatefulWidget {
  static String routeName = 'riwayat-transaksi-screen';
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBarRiwayatTransaksi(context),
        body: TransactionHistorySectionWidget(size: size,),
      ),
    );
  }
}
