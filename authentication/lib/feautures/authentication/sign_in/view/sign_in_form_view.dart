import 'package:authentication/core/widgets/app_button.dart';
import 'package:authentication/core/widgets/app_textfield.dart';
import 'package:authentication/feautures/authentication/authentication_view_model.dart';
import 'package:flutter/material.dart';

class SignInFormView extends StatelessWidget {
  const SignInFormView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppTextField(hintText: 'Email', controller: email),
        SizedBox(height: size.height * 0.02),
        AppTextField(hintText: 'Password', controller: password),
        TextButton(
          onPressed: null,
          child: Text(
            'Forgot your password?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: size.height * 0.06),
        AppButton(
            buttonText: 'Sign in',
            isLarge: true,
            onPressed: () => AuthenticationViewModel()
                .signIn(context, email.text, password.text)),
      ],
    );
  }
}
