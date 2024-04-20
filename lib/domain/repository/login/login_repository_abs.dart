import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure_abs.dart';

abstract class LoginRepositoryAbs {
  Future<Either<FailureAbs, bool>> login(String email, String password);
}
