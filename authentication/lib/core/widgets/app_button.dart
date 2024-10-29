import 'package:authentication/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.buttonText,
      required this.isLarge,
      required this.onPressed});

  final String buttonText;
  final bool isLarge;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          width: isLarge ? 400 : 150,
          height: 60,
          decoration: _decoration(context),
          child: _content(context),
        ),
      );

  Center _content(BuildContext context) {
    return Center(
      child: Text(
        buttonText,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: AppColors.primaryColor.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 10,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}
