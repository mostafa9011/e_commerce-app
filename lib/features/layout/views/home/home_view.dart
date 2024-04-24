import 'package:e_commerce_app/core/extensions/padding_to_widget.dart';
import 'package:e_commerce_app/features/layout/views/home/widgets/custom_row_section.dart';
import 'package:e_commerce_app/features/layout/views/home/widgets/custom_search_and_cart.dart';
import 'package:flutter/material.dart';
import '../../widgets/route_icon.dart';
import 'widgets/advertisement.dart';
import 'widgets/brands_list.dart';
import 'widgets/categories_grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RouteIcon(),
            SizedBox(
              height: 10,
            ),
            CustomSearchAndCart(),
            SizedBox(
              height: 10,
            ),
            Advertisement(),
            SizedBox(
              height: 10,
            ),
            CustomRowSection(
              text: 'Categories',
            ),
            SizedBox(
              height: 5,
            ),
            CategoriesGridView(),
            CustomRowSection(
              text: 'Brands',
            ),
            SizedBox(
              height: 5,
            ),
            BrandsList(),
          ],
        ).setHorizontalPadding(context, 0.05),
      ),
    );
  }
}
