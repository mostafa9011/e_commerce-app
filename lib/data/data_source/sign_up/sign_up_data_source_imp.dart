import 'package:dio/dio.dart';

import 'sign_up_data_source_abs.dart';
import '../../../domain/entities/register_request_data.dart';

class RegisterDataSourceImp implements SignUpDataSourceAbs {

  final Dio dio;

  RegisterDataSourceImp(this.dio);


  @override
  Future<Response> register(RegisterRequestData data) async {
    return await dio.post(
        "/api/v1/auth/signup",
        data: {
          "name": data.name,
          "email": data.email,
          "password": data.password,
          "rePassword": data.password,
          "phone": data.phone,
        }
    );
  }
}