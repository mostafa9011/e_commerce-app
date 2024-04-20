import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_app/core/config/constats.dart';
import 'package:e_commerce_app/core/extensions/padding_to_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../sign_in_view/widgets/custom_rounded_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var nameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.theme.primaryColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                delay: const Duration(microseconds: 500),
                child: Center(
                  child: Image.asset(
                    'assets/images/routeIcon.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              FadeInRight(
                delay: const Duration(microseconds: 600),
                child: Text(
                  'Full Name',
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 700),
                child: CustomTextFormField(
                  controller: nameController,
                  hint: 'enter your full name',
                  keyboardType: TextInputType.name,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 800),
                child: Text(
                  'Mobile Number',
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 900),
                child: CustomTextFormField(
                  controller: mobileController,
                  hint: 'enter your mobile no.',
                  keyboardType: TextInputType.number,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 1000),
                child: Text(
                  'E-mail address',
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 1050),
                child: CustomTextFormField(
                  controller: emailController,
                  hint: 'enter your email address',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 1100),
                child: Text(
                  'Password',
                  style: Constants.theme.textTheme.bodyMedium,
                ),
              ),
              FadeInRight(
                delay: const Duration(microseconds: 1150),
                child: CustomTextFormField(
                  controller: passwordController,
                  hint: 'enter your password',
                  isPassword: true,
                  maxLines: 1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInRight(
                delay: const Duration(microseconds: 1200),
                child: CustomRoundedButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      log('success');
                    }
                  },
                  title: 'Sign up',
                ),
              ),
            ],
          ).setHorizontalPadding(
            context,
            0.05,
          ),
        ),
      ),
    );
  }
}
