import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/sign_in_model.dart';
import '../services/services.dart';
import '../utils/state/finite_state.dart';

class SignInProvider extends ChangeNotifier {
  final ApiService service = ApiService();
  late SharedPreferences loginData;

  SignInModel? users;

  MyState myState = MyState.initial;
  Future signIn({
    required String email,
    required String password,
  }) async {
    try {
      myState = MyState.loading;
      notifyListeners();
      loginData = await SharedPreferences.getInstance();

      final users = await service.signIn(
        email: email,
        password: password,
      );
      await loginData.setString('login', users.token!);
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
      // return null;
    }
  }
}
