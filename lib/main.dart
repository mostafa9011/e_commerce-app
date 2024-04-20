import 'package:bot_toast/bot_toast.dart';
import 'package:e_commerce_app/core/config/app_theme_manager.dart';
import 'package:e_commerce_app/core/config/routes.dart';
import 'package:e_commerce_app/core/config/view_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lightTheme,
      initialRoute: ViewRoutesName.initial,
      onGenerateRoute: Routes.onGenerate,
      navigatorKey: navigatorKey,
      builder: EasyLoading.init(
        builder: BotToastInit(),
      ),
      navigatorObservers: [BotToastNavigatorObserver()],
    );
  }
}
