import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'FavoriteView',
        style: Constants.theme.textTheme.titleLarge?.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
