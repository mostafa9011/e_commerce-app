import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_app/core/config/constants.dart';
import 'package:e_commerce_app/core/extensions/padding_to_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_rounded_button.dart';
import 'package:e_commerce_app/features/sign_up_view/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../domain/entities/register_request_data.dart';
import '../manager/cubit.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var registerCubit = RegisterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterStates>(
      bloc: registerCubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Constants.theme.primaryColor,
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FadeInDown(
                    delay: const Duration(milliseconds: 100),
                    child: Image.asset("assets/images/routeIcon.png"),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 200),
                    child: Text(
                      "Full Name",
                      style: Constants.theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 300),
                    child: CustomTextFormField(
                      controller: nameController,
                      hint: "Enter your full name",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 400),
                    child: Text(
                      "Mobile number",
                      style: Constants.theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 500),
                    child: CustomTextFormField(
                      controller: phoneController,
                      hint: "Enter your mobile number",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 600),
                    child: Text(
                      "E-mail",
                      style: Constants.theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 700),
                    child: CustomTextFormField(
                      controller: emailController,
                      hint: "Enter your email address",
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 800),
                    child: Text(
                      "Password",
                      style: Constants.theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 900),
                    child: CustomTextFormField(
                      controller: passwordController,
                      hint: "Enter your password",
                      isPassword: true,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 1100),
                    child: CustomButton(
                      title: "Sing Up",
                      fontSize: 18,
                      color: Constants.theme.primaryColor,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          var data = RegisterRequestData(
                            name: nameController.text,
                            phone: phoneController.text,
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          registerCubit.register(data);
                        }
                      },
                    ),
                  ),
                ],
              ).setHorizontalPadding(context, 0.05, enableMediaQuery: true),
            ),
          ),
        );
      },
    );
  }
}
