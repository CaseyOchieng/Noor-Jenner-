import 'package:flutter/material.dart';
import 'package:noorjenner/common/widgets/button/basic_app_button.dart';
import 'package:noorjenner/core/configs/theme/app_colors.dart';
import 'package:noorjenner/presentation/auth/pages/signup.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('asset/vectors/topPattern.png'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('asset/vectors/downPattern .png'),
          ),
          // Align(
          //     alignment: Alignment.bottomLeft,
          //     child: Image.asset(AppImages.authBG)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image.asset(AppVectors.noorJennerLogo),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'Noor jenner is a proprietary music streaming and media services provider',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignupPage(),
                                ),
                              );
                            },
                            title: 'Register',
                            height: null,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (BuildContext context) =>
                              //         SigninPage(),
                              //   ),
                              // );
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
