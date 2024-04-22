import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../../../core/config/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: Constants.mediaQuery.size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Constants.theme.textTheme.bodyMedium!.copyWith(
            color: Constants.theme.primaryColor,
          ),
        ),
      ),
    );
  }
}
