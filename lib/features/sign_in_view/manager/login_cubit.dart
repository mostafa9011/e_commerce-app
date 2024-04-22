import 'package:e_commerce_app/core/config/view_routes.dart';
import 'package:e_commerce_app/core/services/web_service.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source_abs.dart';
import 'package:e_commerce_app/data/data_source/login/login_data_source_imp.dart';
import 'package:e_commerce_app/data/repository_imp/login_repository_imp.dart';
import 'package:e_commerce_app/domain/repository/login/login_repository_abs.dart';
import 'package:e_commerce_app/features/sign_in_view/manager/login_states.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../core/errors/failure_imp.dart';
import '../../../core/services/snake_bar_service.dart';
import '../../../domain/use_cases/login_use_case.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  late LoginUseCase loginUseCase;
  late LoginRepositoryAbs loginRepositoryAbs;
  late LoginDataSourceAbs loginDataSourceAbs;

  Future<bool> login(String email, String password) async {
    EasyLoading.show();

    emit(LoginLoadingState());

    WebServices webServices = WebServices();
    loginDataSourceAbs = LoginDataSourceImp(webServices.freeDio);
    loginRepositoryAbs = LoginRepositoryImp(loginDataSourceAbs);
    loginUseCase = LoginUseCase(loginRepositoryAbs);
    final result = await loginUseCase.excute(email, password);

    return result.fold(
      (fail) {
        var error = fail as FailureImp;

        emit(LoginFailureState());
        EasyLoading.dismiss();
        SnackBarService.showErrorMessage(error.message ?? 'Erorr');

        return Future.value(false);
      },
      (data) {
        emit(LoginSuccsessState());
        EasyLoading.dismiss();
        SnackBarService.showSuccessMessage('Login Successfully');
        navigatorKey.currentState!.pushNamedAndRemoveUntil(
          ViewRoutesName.layout,
          (route) => false,
        );

        return Future.value(true);
      },
    );
  }
}
