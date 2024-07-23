import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noorjenner/common/widgets/button/basic_app_button.dart';
import 'package:noorjenner/core/configs/asset/app_images.dart';
import 'package:noorjenner/core/configs/asset/app_vectors.dart';
import 'package:noorjenner/core/configs/theme/app_colors.dart';
import 'package:noorjenner/presentation/auth/pages/signup_or_signin.dart';
import 'package:noorjenner/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //The container to make the background
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseModeBG),
                fit: BoxFit.fill,
              ),
            ),
          ),
          //The container to make the background
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppVectors.noorJennerLogo,
                    width: 200,
                    height: 200,
                  ),
                ),
                //The text to be displayed.
                const Spacer(),
                const Text(
                  'Choose  Mode',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // The text to be displayed.
                const SizedBox(height: 21.0),
                // icon section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: sized_box_for_whitespace
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                context
                                    .read<ThemeCubit>()
                                    .updateTheme(ThemeMode.light);
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.sun,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //Text in the icon
                        Text(
                          'Light Mode',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // ignore: sized_box_for_whitespace
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: GestureDetector(
                              onTap: () {
                                context
                                    .read<ThemeCubit>()
                                    .updateTheme(ThemeMode.dark);
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  AppVectors.moon,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //Text
                        Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // icon section
                SizedBox(
                  height: 50.0,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupOrSignin(),
                      ),
                    );
                  },
                  title: 'Continue',
                  height: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
