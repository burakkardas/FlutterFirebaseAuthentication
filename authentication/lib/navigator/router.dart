import 'package:authentication/feautures/authentication/sign_in/view/sign_in_view.dart';
import 'package:authentication/feautures/authentication/sign_up/view/sign_up_view.dart';
import 'package:authentication/feautures/intro/view/intro_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    // Home
    GoRoute(
      path: '/',
      name: 'Home',
      builder: (BuildContext context, GoRouterState state) {
        return const IntroView();
      },
    ),
    GoRoute(
      path: '/signInView',
      name: 'SignInView',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInView();
      },
    ),
    GoRoute(
      path: '/signUpView',
      name: 'SignUpView',
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpView();
      },
    ),
  ],
);
