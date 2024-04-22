import 'package:flutter/material.dart';

class AppThemeManager {
  static Color primaryColor = const Color(0xff004182);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppines",
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppines",
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppines",
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppines",
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: primaryColor,
      toolbarHeight: 40,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF004182),
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
  );
}
