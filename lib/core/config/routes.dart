import 'package:e_commerce_app/core/config/view_routes.dart';
import 'package:e_commerce_app/features/sign_in_view/views/login_view.dart';
import 'package:e_commerce_app/features/sign_up_view/views/sign_up_view.dart';
import 'package:e_commerce_app/features/splash_view/views/splash_view.dart';
import 'package:flutter/material.dart';

import '../../features/layout/pages/layout_view.dart';

class Routes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case ViewRoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case ViewRoutesName.login:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
          settings: settings,
        );
      case ViewRoutesName.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
          settings: settings,
        );
      case ViewRoutesName.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
