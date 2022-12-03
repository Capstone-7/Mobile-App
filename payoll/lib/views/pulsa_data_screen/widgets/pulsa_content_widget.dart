import 'package:flutter/material.dart';
import 'package:payoll/models/pulsa_offering_model.dart';
import 'package:payoll/utils/constant.dart';

class PulsaContentWidget extends StatelessWidget {
  const PulsaContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: pulsaOfferings.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: size.height * 0.17),
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
                          offset:
                              Offset(0.0, 0.75) // shadow direction: bottom right
                          )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${pulsaOfferings[index].offering} Rp${pulsaOfferings[index].price}',
                        style: const TextStyle(
                            fontSize: Constant.fontRegular, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Harga',
                              style: TextStyle(fontSize: Constant.fontSemiSmall),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              'Rp${pulsaOfferings[index].finalPrice}',
                              style: const TextStyle(
                                  fontSize: Constant.fontSemiBig,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF396EB0)),
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
