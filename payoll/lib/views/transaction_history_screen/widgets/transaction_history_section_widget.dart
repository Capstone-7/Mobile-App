import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/history_model.dart';
import '../../../utils/constant.dart';

class TransactionHistorySectionWidget extends StatelessWidget {
  TransactionHistorySectionWidget({Key? key, required this.size}) : super(key: key);
  final Size size;
  final oCcy = NumberFormat.currency(
      locale: 'id', customPattern: '\u00a4 #,### ', decimalDigits: 0);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.015,
            ),
            SizedBox(
              // height: 600,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: histories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: size.height * 0.15,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 60.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFAFAFA),
                                  // color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    histories[index].icon,
                                    height: 40.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              SizedBox(
                                // color: Colors.yellow,
                                width: size.width * 0.35,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  height: 40.0,
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                      color:
                                          (histories[index].status == 'Berhasil')
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
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
