import 'package:flutter/material.dart';
import 'package:payoll/providers/transaction_provider.dart';
import 'package:payoll/views/transaction_status_screen/views/transaction_status_screen.dart';
import 'package:provider/provider.dart';
import '../../../models/product_model.dart';
import '../../../providers/user_provider.dart';
import '../../../utils/state/finite_state.dart';

class PaymentMethodsScreen extends StatefulWidget {
  static const String routeName = 'payment_method_screen';
  final Data? product;

  const PaymentMethodsScreen({Key? key, this.product}) : super(key: key);

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  @override
  void initState() {
    final provider = Provider.of<TransactionProvider>(context, listen: false);
    provider.addListener(
      () {
        if (provider.myState == MyState.failed) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Transaction Failed',
              ),
            ),
          );
        } else if (provider.myState == MyState.loaded) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Logged In',
              ),
            ),
          );
          Navigator.pushReplacementNamed(
              context, TransactionStatusScreen.routeName);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionProvider>(context, listen: false);
    final user = Provider.of<UserProvider>(context, listen: false);
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
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            provider.transaction(
                customerId: user.profileModel?.id,
                productCode: widget.product?.code,
                successRedirectUrl: 'https://ariesta.club/success',
                failureRedirectUrl: 'https://ariesta.club/fail');
          },
          child: Consumer<TransactionProvider>(
            builder: (context, provider, _) {
              if (provider.myState == MyState.loading) {
                return const CircularProgressIndicator();
              } else {
                return const Text('SUBMIT');
              }
            },
          ),
        ),
      ),
    );
  }
}
