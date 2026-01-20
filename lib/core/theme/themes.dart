import 'package:flutter/material.dart';
import 'package:trust_task/core/theme/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Georgia',
    primaryColor: AppColors.primaryColor,

    //scaffoldBackgroundColor: primaryColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black87),
      bodySmall: TextStyle(fontSize: 12, color: Colors.black87),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        fontFamily: 'Georgia',
      ),
      iconTheme: IconThemeData(color: Colors.black87),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: babyBlue, width: 1.5),
      ),
      hintStyle: const TextStyle(fontSize: 14, color: Colors.black54),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Georgia',
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: lightBlueTextColor,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          fontFamily: 'Serif',
        ),
      ),
    ),
  );
}
