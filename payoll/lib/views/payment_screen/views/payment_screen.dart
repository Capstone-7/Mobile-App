import 'package:flutter/material.dart';
import 'package:payoll/views/payment_screen/widgets/payment_detail_card.dart';
import '../../../models/data_offering_model.dart';
import '../../../utils/constant.dart';
import '../../payment_methods_screen/views/payment_methods_screen.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = 'payment_screen';
  late int? index;

  PaymentScreen({Key? key, this.index}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      // backgroundColor: const Color(0xff396EB0),
      appBar: AppBar(
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
          'Pembayaran',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff396EB0),
                ),
              ),
              Container(
                height: size.height * 0.18,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 10.0, 18.0, 0.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total Pembayaran',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Rp${dataOfferings[widget.index!].finalPrice.toString()}',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF396EB0)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PaymentMethodsScreen.routeName);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFF396EB0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'PILIH METODE PEMBAYARAN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Constant.fontSemiBig,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 5.0,
            right: 0.0,
            left: 0.0,
            child: PaymentDetailCard(
              index: widget.index!,
            ),
          ),
        ],
      ),
    );
  }
}
