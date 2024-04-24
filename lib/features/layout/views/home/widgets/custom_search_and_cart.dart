import 'package:flutter/material.dart';
import '../../../../../core/config/constants.dart';

class CustomSearchAndCart extends StatelessWidget {
  const CustomSearchAndCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Constants.theme.primaryColor,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Constants.theme.primaryColor,
                  width: 1,
                ),
              ),
              prefixIcon: const Icon(
                Icons.search_rounded,
                color: Color(0xFF004182),
                size: 35,
              ),
              hintText: 'What do you search for?',
              hintStyle: Constants.theme.textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF06004F).withOpacity(0.4),
              ),
              hintMaxLines: 1,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.shopping_cart_outlined,
          size: 30,
          color: Constants.theme.primaryColor,
        )
      ],
    );
  }
}
