import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
   return Center(
      child: Text(
        'HomeView',
        style: Constants.theme.textTheme.titleLarge?.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
