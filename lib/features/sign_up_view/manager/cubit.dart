import 'package:e_commerce_app/core/config/view_routes.dart';
import 'package:e_commerce_app/core/errors/failure_imp.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../core/services/snake_bar_service.dart';
import '../../../core/services/web_service.dart';
import '../../../data/data_source/sign_up/sign_up_data_source_abs.dart';
import '../../../data/data_source/sign_up/sign_up_data_source_imp.dart';
import '../../../data/repository_imp/sign_up_repository_imp.dart';
import '../../../domain/entities/register_request_data.dart';
import '../../../domain/repository/login/register_repository.dart';
import '../../../domain/use_cases/register_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main.dart';
import 'states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterLoadingState());

  final WebServices _services = WebServices();
  late RegisterUseCase registerUseCase;
  late RegisterRepository registerRepository;
  late SignUpDataSourceAbs registerDataSource;

  Future<bool> register(RegisterRequestData data) async {
    registerDataSource = RegisterDataSourceImp(_services.freeDio);
    registerRepository = RegisterRepositoryImp(registerDataSource);
    registerUseCase = RegisterUseCase(registerRepository);

    EasyLoading.show();
    final result = await registerUseCase.execute(data);

    return result.fold(
      (fail) {
        var error = fail as FailureImp;

        EasyLoading.dismiss();
        SnackBarService.showErrorMessage(error.message!);
        return Future.value(false);
      },
      (data) {
        EasyLoading.dismiss();
        SnackBarService.showSuccessMessage('Sign up Successfully');
        navigatorKey.currentState!.pushNamedAndRemoveUntil(
          ViewRoutesName.login,
          (route) => false,
        );

        return Future.value(true);
      },
    );
  }
}
