import 'package:authentication/feautures/authentication/authentication_view_model.dart';
import 'package:authentication/feautures/authentication/sign_up/view/sign_up_form_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: _decoration(),
        child: _content(context, size),
      ),
    );
  }

  SafeArea _content(BuildContext context, Size size) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text(
              'Create Account',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'Create an account so you can explore all\nthe existing jobs',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            const SignUpFormView(),
            SizedBox(
              height: size.height * 0.02,
            ),
            TextButton(
                onPressed: () =>
                    AuthenticationViewModel().onClickSignInButton(context),
                child: Text(
                  'Already have an account',
                  style: Theme.of(context).textTheme.titleMedium,
                ))
          ],
        ),
      ),
    );
  }

  BoxDecoration _decoration() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/Background.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}
