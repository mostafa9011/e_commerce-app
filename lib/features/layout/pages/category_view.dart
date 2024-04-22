import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
     return Center(
      child: Text(
        'CategoryView',
        style: Constants.theme.textTheme.titleLarge?.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
