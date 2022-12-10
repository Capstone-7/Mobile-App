import 'package:flutter/material.dart';
import 'package:payoll/views/transaction_status_screen/views/transaction_status_screen.dart';

class PaymentMethodsScreen extends StatelessWidget {
  static const String routeName = 'payment_method_screen';

  const PaymentMethodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,

        toolbarHeight: 70.0,
        backgroundColor: const Color(0xff396EB0),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            size: 30.0,
          ),
        ),
        title: const Text(
          'Metode Pembayaran',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                TransactionStatusScreen.routeName,
              );
            },
            icon: const Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}
