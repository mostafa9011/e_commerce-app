import 'package:flutter/material.dart';
import '../../../../core/config/constants.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'AccountView',
        style: Constants.theme.textTheme.titleLarge?.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
