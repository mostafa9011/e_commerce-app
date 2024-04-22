import 'package:dio/dio.dart';
import '../../../domain/entities/register_request_data.dart';

abstract class SignUpDataSourceAbs {

  Future<Response> register(RegisterRequestData data);

}
