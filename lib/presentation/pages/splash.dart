// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:noorjenner/core/configs/asset/app_vectors.dart';
import 'package:noorjenner/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppVectors.noorJennerLogo,
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const GetStartedPage(),
        ));
  }
}
