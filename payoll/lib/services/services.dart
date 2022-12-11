import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/profile_model.dart';
import '../models/sign_in_model.dart';
import '../models/sign_up_model.dart';

class ApiService {
  late SharedPreferences loginData;

  ApiService() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          if (e.response!.statusCode == 401) {
          } else {}
          return handler.next(e);
        },
      ),
    );
  }

  Dio dio = Dio();
  final String _baseUrl = 'https://payoll-api.nyakit.in/api/v1/';

  // SignInModel signInModel = SignInModel();

  // email: alam@gmail.com
  // password: @Password123

  Future<SignUpModel> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await dio.post(
        '${_baseUrl}user/register',
        data: {
          'email': email,
          'password': password,
          'name': name,
        },
      );

      return SignUpModel.fromJson(response.data);
    } on DioError catch (_) {
      rethrow;
    }
  }

  Future<ProfileModel> updateProfile({
    required String name,
    required String email,
  }) async {
    try {
      loginData = await SharedPreferences.getInstance();
      final response = await dio.put('${_baseUrl}user/profile',
          data: {
            'name': name,
            'email': email,
          },
          options: Options(
            headers: {
              "Authorization": "Bearer ${loginData.getString('login')}"
            },
          ));
      return ProfileModel.fromJson(response.data);
    } on DioError catch (_) {
      rethrow;
    }
  }

  Future<SignInModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '${_baseUrl}user/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      return SignInModel.fromJson(response.data);
    } on DioError catch (_) {
      rethrow;
    }
  }

  Future<ProfileModel> fetchUsers() async {
    Dio dio = Dio();
    loginData = await SharedPreferences.getInstance();
    try {
      final response = await dio.get('${_baseUrl}user/profile',
          options: Options(
            headers: {
              "Authorization": "Bearer ${loginData.getString('login')}"
            },
          ));
      return ProfileModel.fromJson(response.data);
    } on DioError catch (_) {
      rethrow;
    }
  }
}
