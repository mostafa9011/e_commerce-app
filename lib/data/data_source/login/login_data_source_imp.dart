import 'package:dio/dio.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source_abs.dart';

class LoginDataSourceImp implements LoginDataSourceAbs {
  LoginDataSourceImp(this.dio);
  final Dio dio;

  @override
  Future<Response> login(String email, String password) async {
    return await dio.post('/api/v1/auth/signin', data: {
      'email': email,
      'password': password,
    });
  }
}
