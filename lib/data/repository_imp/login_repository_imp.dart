import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/errors/failure_abs.dart';
import 'package:e_commerce_app/core/errors/failure_imp.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source_abs.dart';
import 'package:e_commerce_app/domain/repository/login/login_repository_abs.dart';

class LoginRepositoryImp implements LoginRepositoryAbs {
  final LoginDataSourceAbs loginDataSourceAbs;
  LoginRepositoryImp(this.loginDataSourceAbs);

  @override
  Future<Either<FailureAbs, bool>> login(String email, String password) async {
    try {
      final response = await loginDataSourceAbs.login(email, password);
      if (response.statusCode == 200) {
        return const Right(true);
      } else if (response.statusCode == 401) {
        return Left(
          FailureImp(
            statusCode: response.statusCode.toString(),
            message: response.data['message'],
          ),
        );
      } else {
        return Left(
          FailureImp(
            statusCode: response.statusCode.toString(),
            message: response.data['message'],
          ),
        );
      }
    } on DioException catch (e) {
      return Left(
        FailureImp(
          statusCode: e.response?.statusCode.toString() ?? '',
          message: e.response?.data['message'],
        ),
      );
    }
  }
}
