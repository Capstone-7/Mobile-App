import 'package:flutter/material.dart';
import 'package:payoll/views/transaction_status_screen/widgets/transaction_success_card.dart';
import '../../../utils/constant.dart';
import '../widgets/transaction_failed_card.dart';
import '../widgets/transaction_onprocess_card.dart';

enum Status { onProcess, success, failed }

class TransactionStatusScreen extends StatelessWidget {
  static const String routeName = 'transaction_status_screen';

  TransactionStatusScreen({Key? key}) : super(key: key);

  var transactionStatus = Status.onProcess;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(Constant.mainColor),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.38,
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: size.height * 0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              (transactionStatus == Status.onProcess ||
                                      transactionStatus == Status.failed)
                                  ? Container(
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(8.0)),
                                          border: Border.all(
                                              color: const Color(Constant.mainColor))),
                                      child: const Center(
                                          child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Text(
                                          'BANTUAN?',
                                          style: TextStyle(
                                              color: Color(
                                                Constant.mainColor,
                                              ),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.0),
                                        ),
                                      )),
                                    )
                                  : Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(8.0)),
                                                border: Border.all(
                                                    color: const Color(
                                                        Constant.mainColor))),
                                            child: const Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.0),
                                              child: Text(
                                                'BANTUAN?',
                                                style: TextStyle(
                                                    color: Color(
                                                      Constant.mainColor,
                                                    ),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13.0),
                                              ),
                                            )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.03,
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF396EB0),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                            ),
                                            child: const Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.0),
                                              child: Text(
                                                'BAGIKAN',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13.0),
                                              ),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                              const Text(
                                'Kembali ke Beranda',
                                style: TextStyle(
                                    color: Color(
                                      0xFF396EB0,
                                    ),
                                    fontWeight: FontWeight.w700,
                                    fontSize: Constant.fontRegular),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 40.0,
            left: 0.0,
            right: 0.0,
            child: (transactionStatus == Status.onProcess)
                ? TransactionOnProcessCard(size: size)
                : (transactionStatus == Status.success)
                    ? TransactionSuccessCard(size: size)
                    : TransactionFailedCard(size: size),
          )
        ],
      ),
    );
  }
}
