import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../models/profile_model.dart';
import '../services/services.dart';
import '../utils/state/finite_state.dart';

class ProfileProvider extends ChangeNotifier {
  final ApiService service = ApiService();

  ProfileModel? profileModel;

  MyState myState = MyState.initial;
  Future fetchProfile() async {
    try {
      myState = MyState.loading;
      notifyListeners();

      profileModel = await service.fetchUsers();

      myState = MyState.loaded;
      notifyListeners();
    }
    catch (e) {
      if (e is DioError) {
        if (kDebugMode) {
          print(e.response!.statusMessage);
        }
      }

      myState = MyState.failed;
      notifyListeners();
    }
  }
}