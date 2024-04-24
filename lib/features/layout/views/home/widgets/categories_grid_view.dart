import 'package:flutter/material.dart';
import '../../../../../core/config/constants.dart';
import 'custom_category_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.mediaQuery.size.height * 0.35,
      child: GridView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomCategoryItem();
        },
      ),
    );
  }
}
