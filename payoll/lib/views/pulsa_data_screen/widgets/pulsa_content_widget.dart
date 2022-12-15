import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payoll/providers/product_provider.dart';
import 'package:payoll/utils/constant.dart';
import 'package:payoll/utils/state/finite_state.dart';
import 'package:provider/provider.dart';

class PulsaContentWidget extends StatelessWidget {
  const PulsaContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final oCcy = NumberFormat.currency(
        locale: 'id',
        customPattern: '\u00a4 #,### ',
        decimalDigits: 0,
        symbol: 'Rp');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<ProductProvider>(builder: (context, provider, _) {
        switch (provider.myState) {
          case MyState.loading:
            return const Center(
              child: SingleChildScrollView(),
            );
          case MyState.loaded:
            if (provider.productModel == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return GridView.builder(
                  shrinkWrap: true,
                  itemCount: provider.productModel!.data!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: size.height * 0.16),
                  itemBuilder: (BuildContext context, int index) {
                    final product = provider.productModel!.data![index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x29292914),
                                  blurRadius: 10.0,
                                  blurStyle: BlurStyle.normal,
                                  offset: Offset(0.0,
                                      0.75) // shadow direction: bottom right
                                  )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${product.description} Rp${product.price}',
                                style: const TextStyle(
                                    fontSize: Constant.fontRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Harga',
                                      style: TextStyle(
                                          fontSize: Constant.fontSemiSmall),
                                    ),
                                    Text(
                                      oCcy.format(
                                        product.price,
                                      ),
                                      style: const TextStyle(
                                          fontSize: Constant.fontSemiBig,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF396EB0)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }

          case MyState.failed:
            return const Text('Oops, something went wrong!');
          default:
            return const SizedBox();
        }
      }),
    );
  }
}
