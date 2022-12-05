import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/sign_in_model.dart';
import '../services/services.dart';
import '../utils/state/finite_state.dart';

class SignInProvider extends ChangeNotifier {
  final ApiService service = ApiService();

  SignInModel? users;

  MyState myState = MyState.initial;

  Future signIn({
    required String email,
    required String password,
  }) async {
    try {
      myState = MyState.loading;
      notifyListeners();

      users = await service.signIn(
        email: email,
        password: password,
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
