import 'package:flutter/material.dart';

import '../../../models/data_offering_model.dart';
import '../../../utils/constant.dart';

class TransactionSuccessCard extends StatelessWidget {
  const TransactionSuccessCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.92,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                  color: Color(0x29292914),
                  blurRadius: 15.0,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(
                      0.0, 0.75) // shadow direction: bottom right
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: size.width * 0.17,
                  width: size.width * 0.17,
                  child: Image.asset('assets/icons/success-icon.png'),
                ),
              ),
              SizedBox(height: size.height * 0.018),
              const Center(
                child: Text(
                  'Berhasil',
                  style: TextStyle(
                      fontSize: Constant.fontBig,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF42AD3A)),
                ),
              ),
              SizedBox(height: size.height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '14 Nov 2022',
                          style: TextStyle(fontSize: Constant.fontSmall),
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 5,
                        ),
                        Text(
                          '06:30',
                          style: TextStyle(fontSize: Constant.fontSmall),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.47,
                    child: const Text(
                      'Id transaksi : PLS02931739DGL',
                      style: TextStyle(fontSize: Constant.fontSmall),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: size.height * 0.0045,
              ),
              Row(
                children: [
                  SizedBox(
                    height: size.width * 0.04,
                    width: size.width * 0.04,
                    child:
                    Image.asset('assets/icons/success-icon.png'),
                  ),
                  SizedBox(width: size.width * 0.02),
                  const Text(
                    'Transaksi Berhasil',
                    style: TextStyle(
                      fontSize: Constant.fontSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.006,
              ),
              const Text(
                'Xtra Hotrod special 6.5GB, 7hr',
                style: TextStyle(
                    fontSize: Constant.fontBig, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFEDEDED),
                        borderRadius:
                        BorderRadius.all(Radius.circular(7.0))),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(child: Text('PULSA & DATA', style: TextStyle(fontSize: 10.0),)),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.035,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF0F9F2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        border: Border.all(
                            color: const Color(0xFF42AD3A), width: 2)),
                    child: const Padding(
                      padding:
                      EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                      child: Center(
                        child: Text(
                          'Berhasil',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Constant.fontExtraSmall,
                              color: Color(0xFF42AD3A)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Text(
                'Detail Transaksi',
                style: TextStyle(
                    fontSize: Constant.fontBig, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.014,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Id Transaksi',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: const Text(
                          'PLS02931739DGL',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Nama Produk',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: Text(
                          dataOfferings[1].offering,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Nomor Handphone',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: const Text(
                          '087123456789',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Metode pembayaran',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: const Text(
                          'Gopay',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Kode Promosi',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: const Text(
                          '-',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Harga',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: Text(
                          dataOfferings[1].finalPrice.toString(),
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.34,
                        child: const Text(
                          'Biaya Admin',
                          style: TextStyle(fontSize: Constant.fontRegular),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                        child: const Text(
                          'Gratis!',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: Constant.fontRegular,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.0,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.38,
                          child: const Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.42,
                          child: Text(
                            'Rp${dataOfferings[1].finalPrice.toString()}',
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}