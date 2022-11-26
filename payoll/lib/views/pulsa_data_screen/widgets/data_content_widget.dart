import 'package:flutter/material.dart';
import 'package:payoll/models/data_offering_model.dart';
import 'package:payoll/views/payment_screen/views/payment_screen.dart';

import '../../../utils/constant.dart';

class DataContentWidget extends StatelessWidget {
  const DataContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: dataOfferings.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: size.height * 0.22),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x29292914),
                          blurRadius: 10.0,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(
                              0.0, 0.75) // shadow direction: bottom right
                          )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dataOfferings[index].offering,
                        style: const TextStyle(
                            fontSize: Constant.fontRegular,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: size.height * 0.09,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Harga',
                              style:
                                  TextStyle(fontSize: Constant.fontSemiSmall),
                            ),
                            Text(
                              'Rp${dataOfferings[index].finalPrice}',
                              style: const TextStyle(
                                  fontSize: Constant.fontSemiBig,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF396EB0)),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Wrap(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18.0, 10.0, 18.0, 20.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Center(
                                                  child: Container(
                                                    width: 90.0,
                                                    height: 6.0,
                                                    decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xFFC5C5C5),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.02,
                                                ),
                                                Text(
                                                  dataOfferings[index].offering,
                                                  style: const TextStyle(
                                                      fontSize:
                                                          Constant.fontBig,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.015,
                                                ),
                                                Text(
                                                  dataOfferings[index]
                                                      .description,
                                                  style: const TextStyle(
                                                    fontSize:
                                                        Constant.fontRegular,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text(
                                                      'Harga',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      'Rp${dataOfferings[index].finalPrice.toString()}',
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0xFF396EB0)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                PaymentScreen(
                                                                  index: index,
                                                                )));
                                                  },
                                                  child: Container(
                                                    decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xFF396EB0),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0))),
                                                    child: const Center(
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Text(
                                                          'LANJUT KE PEMBAYARAN',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: Constant
                                                                  .fontSemiBig,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: const Expanded(
                                child: Text(
                                  'Lihat selengkapnya',
                                  style: TextStyle(
                                      fontSize: Constant.fontSmall,
                                      color: Color(0xFF396EB0)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
