import 'package:authentication/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get currentTheme => ThemeData(
      primaryColor: AppColors.primaryColor,
      textTheme: _textTheme(),
      inputDecorationTheme: _inputDecorationTheme());

  static InputDecorationTheme _inputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.inputBackground,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColors.primaryColor,
          width: 2,
        ),
      ),
    );
  }

  static TextTheme _textTheme() {
    return TextTheme(
      headlineLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),
      headlineSmall: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryColor),
    );
  }
}
