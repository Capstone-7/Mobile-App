import 'package:flutter/material.dart';
import '../../../models/category_model.dart';
import '../../../utils/constant.dart';
import '../widgets/product_category_slider_widget.dart';
import '../widgets/product_list_widget.dart';

class AllProductsScreen extends StatelessWidget {
  static const String routeName = 'all_product_screen';

  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<String> categories = ['Semua', 'Daily', 'Bills', 'Entertainment'];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 70.0,
        backgroundColor: const Color(0xff396EB0),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 30.0,
        ),
        title: const Text(
          'Semua Produk',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCategorySliderWidget(size: size, categories: categories),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Favorit Saya',
                      style: TextStyle(fontSize: Constant.fontSemiBig),
                    ),
                    ProductListWidget(
                      size: size,
                      productCategory: myFavorite,
                    ),
                    const Text(
                      'Daily',
                      style: TextStyle(fontSize: Constant.fontSemiBig),
                    ),
                    ProductListWidget(
                      size: size,
                      productCategory: daily,
                    ),
                    const Text(
                      'Bills',
                      style: TextStyle(fontSize: Constant.fontSemiBig),
                    ),
                    ProductListWidget(
                      size: size,
                      productCategory: bills,
                    ),
                    const Text(
                      'Games',
                      style: TextStyle(fontSize: Constant.fontSemiBig),
                    ),
                    ProductListWidget(
                      size: size,
                      productCategory: entertainment,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
