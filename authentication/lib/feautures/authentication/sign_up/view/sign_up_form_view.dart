import 'package:authentication/core/widgets/app_button.dart';
import 'package:authentication/core/widgets/app_textfield.dart';
import 'package:authentication/feautures/authentication/authentication_view_model.dart';
import 'package:flutter/material.dart';

class SignUpFormView extends StatelessWidget {
  const SignUpFormView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppTextField(
          hintText: 'Email',
          controller: email,
        ),
        SizedBox(height: size.height * 0.02),
        AppTextField(
          hintText: 'Password',
          controller: password,
        ),
        SizedBox(height: size.height * 0.02),
        AppTextField(
          hintText: 'Confirm Password',
          controller: confirmPassword,
        ),
        SizedBox(height: size.height * 0.06),
        AppButton(
          buttonText: 'Sign up',
          isLarge: true,
          onPressed: () => AuthenticationViewModel().signUp(
            context,
            email.text,
            password.text,
            confirmPassword.text,
          ),
        ),
      ],
    );
  }
}
