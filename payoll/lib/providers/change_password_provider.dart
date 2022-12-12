import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:payoll/models/password_model.dart';

import '../services/services.dart';
import '../utils/state/finite_state.dart';

class ChangePasswordProvider extends ChangeNotifier {
  final ApiService service = ApiService();

  PasswordModel? users;

  MyState myState = MyState.initial;

  Future changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      // myState = MyState.loading;
      // notifyListeners();
      users = await service.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
      );
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
      notifyListeners();
    }
  }
}
