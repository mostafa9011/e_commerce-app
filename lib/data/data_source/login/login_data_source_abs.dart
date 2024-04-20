import 'package:dio/dio.dart';

abstract class LoginDataSourceAbs {
  Future<Response> login(String email, String password);
}
