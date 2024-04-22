import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/failure_abs.dart';
import '../entities/register_request_data.dart';
import '../repository/login/register_repository.dart';

class RegisterUseCase {
  final RegisterRepository registerRepository;
  RegisterUseCase(this.registerRepository);

  Future<Either<FailureAbs, bool>> execute(RegisterRequestData data) async {
    return await registerRepository.register(data);
  }
}
