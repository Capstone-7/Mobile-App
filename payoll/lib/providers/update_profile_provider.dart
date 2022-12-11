import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/profile_model.dart';
import '../services/services.dart';
import '../utils/state/finite_state.dart';

class UpdateProfileProvider extends ChangeNotifier {
  final ApiService service = ApiService();

  ProfileModel? users;

  MyState myState = MyState.initial;

  Future updateProfile({
    required String email,
    required String name,
  }) async {
    try {
      // myState = MyState.loading;
      // notifyListeners();
      users = await service.updateProfile(
        name: name,
        email: email,
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
