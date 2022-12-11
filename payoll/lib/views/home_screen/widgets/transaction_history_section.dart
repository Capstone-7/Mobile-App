import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payoll/views/transaction_history_screen/views/transaction_history_screen.dart';
import '../../../models/history_model.dart';
import '../../../utils/constant.dart';

class TransactionHistorySection extends StatelessWidget {
  TransactionHistorySection({Key? key, required this.size}) : super(key: key);
  final Size size;
  final oCcy = NumberFormat.currency(
      locale: 'id', customPattern: '\u00a4 #,### ', decimalDigits: 0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Riwayat Transaksi',
                style: TextStyle(
                    fontSize: Constant.fontSemiBig,
                    fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TransactionHistoryScreen.routeName,
                  );
                },
                child: const Text(
                  'Lihat Semua',
                  style: TextStyle(fontSize: 17.0, color: Color(0xff396EB0)),
                ),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: histories.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            width: 60.0,
                            decoration: const BoxDecoration(
                              color: Color(0xffFAFAFA),
                              // color: Colors.blue,
                            ),
                            child: Image.asset(
                              histories[index].icon,
                              height: 40.0,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          SizedBox(
                            width: size.width * 0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  histories[index].category,
                                  style: const TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text('Order Id: ${histories[index].orderId}'),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(histories[index].date),
                                    const Icon(
                                      Icons.fiber_manual_record,
                                      size: 10,
                                    ),
                                    Text(histories[index].time)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              oCcy.format(histories[index].price).toString(),
                              style: const TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: 40.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: (histories[index].status == 'Berhasil')
                                      ? const Color(0xffF0F9F2)
                                      : const Color(0xffF9F2F2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(18.0)),
                                  border: Border.all(
                                      color: (histories[index].status ==
                                              'Berhasil')
                                          ? const Color(0xff6EC581)
                                          : const Color(0xffE3A1A1),
                                      width: 2.5)),
                              child: Center(
                                  child: Text(
                                histories[index].status,
                                style: const TextStyle(fontSize: 17.0),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
