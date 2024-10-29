import 'package:authentication/core/theme/app_theme.dart';
import 'package:authentication/navigator/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: router,
        title: 'Firebase Authentication',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.currentTheme,
      );
}
