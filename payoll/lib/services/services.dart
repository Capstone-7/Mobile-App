import 'package:dio/dio.dart';
import '../models/sign_up_model.dart';

class ApiService {
  ApiService() {
    _dio.interceptors.add(
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

  final Dio _dio = Dio();
  final String _baseUrl = 'https://payoll-api.nyakit.in/api/v1/user/';

  // email: alam@gmail.com
  // password: @Password123

  Future<SignUpModel> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _dio.post(
        _baseUrl + 'register',
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
}
