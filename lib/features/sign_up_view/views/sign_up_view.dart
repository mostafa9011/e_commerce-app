import 'package:animate_do/animate_do.dart';
import 'package:e_commerce_app/core/config/constats.dart';
import 'package:e_commerce_app/core/extensions/padding_to_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../sign_in_view/widgets/custom_rounded_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.theme.primaryColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
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
                style: Constant.theme.textTheme.bodyMedium,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 700),
              child: const CustomTextFormField(
                hint: 'enter your full name',
                keyboardType: TextInputType.name,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 800),
              child: Text(
                'Mobile Number',
                style: Constant.theme.textTheme.bodyMedium,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 900),
              child: const CustomTextFormField(
                hint: 'enter your mobile no.',
                keyboardType: TextInputType.number,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 1000),
              child: Text(
                'E-mail address',
                style: Constant.theme.textTheme.bodyMedium,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 1050),
              child: const CustomTextFormField(
                hint: 'enter your email address',
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 1100),
              child: Text(
                'Password',
                style: Constant.theme.textTheme.bodyMedium,
              ),
            ),
            FadeInRight(
              delay: const Duration(microseconds: 1150),
              child: const CustomTextFormField(
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
              child: const CustomRoundedButton(
                title: 'Sign up',
              ),
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
