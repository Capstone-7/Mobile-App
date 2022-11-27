import 'package:flutter/material.dart';
import 'package:payoll/views/home_screen/widgets/service_card_widget.dart';
import '../../../utils/constant.dart';
import '../widgets/home_screen_carousel.dart';
import '../widgets/transaction_history_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff396EB0),
      appBar: AppBar(
        toolbarHeight: 90.0,
        backgroundColor: const Color(0xff396EB0),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 10.0),
          child: Image.asset(
            'assets/icons/logo.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 10.0),
            child: SizedBox(
                height: size.width * 0.07,
                width: size.width * 0.07,
                child: Image.asset('assets/icons/notification.png')),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.25,
                ),
                Container(
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.1,
                            ),
                            const Text(
                              'Belanja Makin Hemat!!!',
                              style: TextStyle(
                                  fontSize: Constant.fontSemiBig,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: size.height * 0.015,
                            ),
                            const Text(
                              'Dapetin diskon dan harga spesial nya di PayOll sekarang sebelum kehabisan!!!',
                              style: TextStyle(fontSize: Constant.fontRegular),
                            ),
                          ],
                        ),
                      ),
                      const HomeScreenCarousel(),
                      TransactionHistorySection(size: size),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: 5.0,
                left: 0.0,
                right: 0.0,
                child: ServiceCardWidget(size: size))
          ],
        ),
      ),
    );
  }
}
