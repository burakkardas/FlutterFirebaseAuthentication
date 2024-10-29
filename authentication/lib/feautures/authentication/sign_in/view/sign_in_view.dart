import 'package:authentication/feautures/authentication/authentication_view_model.dart';
import 'package:authentication/feautures/authentication/sign_in/view/sign_in_form_view.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
              'Login Here',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'Welcome back you’ve\nbeen missed!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            const SignInFormView(),
            SizedBox(
              height: size.height * 0.02,
            ),
            TextButton(
                onPressed: () =>
                    AuthenticationViewModel().onClickSignUpButton(context),
                child: Text(
                  'Create new account',
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
