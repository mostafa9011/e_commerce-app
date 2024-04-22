import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure_abs.dart';
import '../../entities/register_request_data.dart';

abstract class RegisterRepository {

  Future<Either<FailureAbs, bool>> register(RegisterRequestData data);

}