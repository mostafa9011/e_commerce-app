import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/domain/repository/login/login_repository_abs.dart';

import '../../../core/errors/failure_abs.dart';

class LoginUseCase {
  final LoginRepositoryAbs loginRepositoryAbs;
  LoginUseCase(this.loginRepositoryAbs);

  Future<Either<FailureAbs, bool>> excute(String email, String password) async {
    return await loginRepositoryAbs.login(email, password);
  }
}
