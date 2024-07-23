import 'package:flutter/material.dart';
import 'package:noorjenner/core/configs/theme/app_theme.dart';
import 'package:noorjenner/presentation/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noor Jenner',
      debugShowCheckedModeBanner:
          false, // Set to false to remove the debug banner
      theme: AppTheme.lightTheme,
      home: const SplashPage(),
    );
  }
}
