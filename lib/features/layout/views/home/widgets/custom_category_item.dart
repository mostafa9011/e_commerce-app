import '../../../../../core/config/constants.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/PropertyVariant3.png'),
              // image: NetworkImage(categoryModel.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 110,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12),
            child: Text(
              'name',
              textAlign: TextAlign.center,
              style: Constants.theme.textTheme.bodySmall
                  ?.copyWith(color: Colors.black),
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }
}
