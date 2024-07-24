import 'package:flutter/material.dart';
import 'package:noorjenner/common/widgets/appbar/app_bar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        title: Image.asset(
          'asset/vectors/noor_jenner_logo.png',
          height: 52,
          width: 52,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Column(
          children: [
            //The Registration
            _registerText(),
            SizedBox(
              height: 30,
            ),
            _fullNameField(context)
            //The Registration
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 253, 253),
      ),
    );
  }

  // The text field.
  Widget _fullNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: ' Full Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }
}
