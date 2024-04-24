import 'package:e_commerce_app/core/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ImageSlideshow(
        width: double.infinity,
        height: Constants.mediaQuery.size.height * 0.25,
        initialPage: 0,
        indicatorColor: Constants.theme.primaryColor,
        indicatorBackgroundColor: Colors.white,
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          Image.asset(
            'assets/images/PropertyDefault.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/PropertyVariant2.png',
            fit: BoxFit.fill,
          ),
          Image.asset(
            'assets/images/PropertyVariant3.png',
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
