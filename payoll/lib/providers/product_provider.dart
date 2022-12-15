import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:payoll/models/product_model.dart';
import '../services/services.dart';
import '../utils/state/finite_state.dart';

class ProductProvider extends ChangeNotifier {
  final ApiService service = ApiService();

  ProductModel? productModel;

  MyState myState = MyState.initial;

  Future fetchProductByCategory(String? category) async {
    try {
      myState = MyState.loading;
      notifyListeners();
      productModel = await service.getProductByCategory(category);
      myState = MyState.loaded;
      notifyListeners();
    } catch (e) {
      if (e is DioError) {
        if (kDebugMode) {
          print(e.response!.statusCode);
          print(e.response!.statusMessage);
          print(e.response!.data);
        }
      }

      myState = MyState.failed;
      print(e.toString());
      notifyListeners();
    }
  }
}
