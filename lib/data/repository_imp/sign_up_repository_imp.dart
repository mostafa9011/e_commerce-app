import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/errors/failure_abs.dart';
import 'package:e_commerce_app/core/errors/failure_imp.dart';
import '../../domain/entities/register_request_data.dart';
import '../../domain/repository/login/register_repository.dart';
import '../data_source/sign_up/sign_up_data_source_abs.dart';

class RegisterRepositoryImp implements RegisterRepository {
  final SignUpDataSourceAbs registerDataSource;

  RegisterRepositoryImp(this.registerDataSource);

  @override
  Future<Either<FailureAbs, bool>> register(RegisterRequestData data) async {
    try {
      final response = await registerDataSource.register(data);

      if (response.statusCode == 201) {
        return const Right(true);
      } else {
        return Left(FailureImp(
          statusCode: response.statusCode.toString(),
          message: response.data["message"],
        ));
      }
    } on DioException catch (dioException) {
      return Left(
        FailureImp(
          statusCode: dioException.response?.statusCode.toString() ?? "",
          message: dioException.response?.data["message"],
        ),
      );
    }
  }
}
