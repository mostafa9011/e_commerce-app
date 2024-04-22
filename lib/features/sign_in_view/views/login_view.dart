import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_app/core/config/constants.dart';
import 'package:e_commerce_app/core/config/view_routes.dart';
import 'package:e_commerce_app/core/extensions/padding_to_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_text_field.dart';
import 'package:e_commerce_app/features/sign_in_view/manager/login_cubit.dart';
import 'package:e_commerce_app/features/sign_in_view/manager/login_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../widgets/custom_rounded_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  LoginCubit loginCubit = LoginCubit();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      bloc: loginCubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Constants.theme.primaryColor,
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                      style: Constants.theme.textTheme.titleLarge,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 700),
                    child: Text(
                      'Please sign in with your mail',
                      style: Constants.theme.textTheme.bodySmall,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 800),
                    child: Text(
                      'E-mail address',
                      style: Constants.theme.textTheme.bodyMedium,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 900),
                    child: CustomTextFormField(
                      controller: emailController,
                      hint: 'enter your email address',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 1000),
                    child: Text(
                      'Password',
                      style: Constants.theme.textTheme.bodyMedium,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 1100),
                    child: CustomTextFormField(
                      controller: passwordController,
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
                            style: Constants.theme.textTheme.bodyMedium,
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
                    child: CustomButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          await loginCubit.login(
                            emailController.text,
                            passwordController.text,
                          );
                        }
                      },
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
                          style: Constants.theme.textTheme.bodyMedium,
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
          ),
        );
      },
    );
  }
}
