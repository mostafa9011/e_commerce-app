import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';

class RouteIcon extends StatelessWidget {
  const RouteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.mediaQuery.size.height * 0.03,
      width: Constants.mediaQuery.size.width * 0.2,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/RouteIcon2.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
