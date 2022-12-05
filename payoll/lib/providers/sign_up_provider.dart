import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/sign_up_model.dart';
import '../services/services.dart';
import '../utils/state/finite_state.dart';

class SignUpProvider extends ChangeNotifier {
  final ApiService service = ApiService();

  SignUpModel? users;

  MyState myState = MyState.initial;

  Future signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      myState = MyState.loading;
      notifyListeners();

      users = await service.signUp(
        email: email,
        password: password,
        name: name,
      );

      myState = MyState.loaded;
      notifyListeners();
    } catch (e) {
      if (e is DioError) {
        /// If want to check status code from service error
        e.response!.statusCode;
      }

      myState = MyState.failed;
      notifyListeners();
    }
  }
}
