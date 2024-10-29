import 'package:authentication/core/widgets/app_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationViewModel {
  void onClickSignInButton(BuildContext context) {
    context.go('/signInView');
  }

  void onClickSignUpButton(BuildContext context) {
    context.go('/signUpView');
  }

  Future signIn(BuildContext context, String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      AppSnackBar.show(context, 'Successfully signed in');
    } catch (e) {
      AppSnackBar.show(context, 'Email or password is incorrect');
    }
  }

  Future signUp(BuildContext context, String email, String password,
      String confirmPassword) async {
    if (password.trim() == confirmPassword.trim()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email.trim(), password: password.trim());
        AppSnackBar.show(context, 'Successfully signed up');
      } catch (e) {
        AppSnackBar.show(context, 'An error occurred: $e');
      }
    } else {
      AppSnackBar.show(context, 'Passwords do not match');
    }
  }
}
