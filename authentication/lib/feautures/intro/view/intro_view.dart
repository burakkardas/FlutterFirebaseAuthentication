import 'package:authentication/core/widgets/app_button.dart';
import 'package:authentication/feautures/authentication/authentication_view_model.dart';
import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: _boxDecoration(),
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
          Image.asset(
            'assets/images/welcomeImage.png',
            fit: BoxFit.fill,
          ),
          Text(
            'Discover Your\nDream Job Here',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            'Explore all existing job roles based on your\ninterest and study major',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: size.height * 0.12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppButton(
                buttonText: 'Login',
                isLarge: false,
                onPressed: () =>
                    AuthenticationViewModel().onClickSignInButton(context),
              ),
              TextButton(
                onPressed: () =>
                    AuthenticationViewModel().onClickSignUpButton(context),
                child: Text(
                  'Register',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.black,
                      ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

  BoxDecoration _boxDecoration() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/Background.png'),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
