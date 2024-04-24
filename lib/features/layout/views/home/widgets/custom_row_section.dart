import 'package:e_commerce_app/core/config/constants.dart';
import 'package:flutter/material.dart';

class CustomRowSection extends StatelessWidget {
  const CustomRowSection({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Constants.theme.textTheme.bodyLarge?.copyWith(
            color: Constants.theme.primaryColor,
          ),
        ),
        Text(
          'view all',
          style: Constants.theme.textTheme.bodySmall?.copyWith(
            color: Constants.theme.primaryColor,
          ),
        )
      ],
    );
  }
}
