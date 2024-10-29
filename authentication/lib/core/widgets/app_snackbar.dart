import 'package:authentication/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppSnackBar {
  static void show(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Center(child: Text(message)),
      backgroundColor: AppColors.primaryColor,
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
