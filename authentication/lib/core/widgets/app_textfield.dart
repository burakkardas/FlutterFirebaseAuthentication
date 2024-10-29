import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key, required this.hintText, required this.controller});

  final TextEditingController? controller;
  final String hintText;
  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      );
}
