import 'package:e_commerce_app/core/errors/failure_abs.dart';

/// General remote failures
class FailureImp extends FailureAbs {
  String? error, errorCode;
  String? message;

  FailureImp({
    required super.statusCode,
    this.error,
    this.errorCode,
    this.message,
  });
}
