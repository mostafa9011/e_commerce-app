import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_app/core/config/constats.dart';
import 'package:e_commerce_app/core/config/view_routes.dart';
import 'package:e_commerce_app/core/extensions/padding_to_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../widgets/custom_rounded_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.theme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 500),
              child: Center(
                child: Image.asset(
                  'assets/images/routeIcon.png',
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 600),
              child: Text(
                'Welcome Back To Route',
                style: Constant.theme.textTheme.titleLarge,
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 700),
              child: Text(
                'Please sign in with your mail',
                style: Constant.theme.textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 800),
              child: Text(
                'E-mail address',
                style: Constant.theme.textTheme.bodyMedium,
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 900),
              child: const CustomTextFormField(
                hint: 'enter your email address',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 1000),
              child: Text(
                'Password',
                style: Constant.theme.textTheme.bodyMedium,
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 1100),
              child: const CustomTextFormField(
                hint: 'enter your password',
                isPassword: true,
                maxLines: 1,
              ),
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 1150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Bounceable(
                    onTap: () {},
                    child: Text(
                      'Forgot password',
                      style: Constant.theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 1200),
              child: const CustomRoundedButton(
                title: 'Login',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 1250),
              child: Bounceable(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ViewRoutesName.signUp,
                  );
                },
                child: FadeInRight(
                  delay: const Duration(milliseconds: 1300),
                  child: Text(
                    'Don’t have an account? Create Account',
                    style: Constant.theme.textTheme.bodyMedium,
                  ),
                ),
              ).setOnlyPadding(context, 0, 0, 0, 0.04),
            ),
          ],
        ).setHorizontalPadding(
          context,
          0.05,
        ),
      ),
    );
  }
}
