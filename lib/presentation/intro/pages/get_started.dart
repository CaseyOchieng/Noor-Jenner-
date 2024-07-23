import 'package:flutter/material.dart';
import 'package:noorjenner/common/widgets/button/basic_app_button.dart';
import 'package:noorjenner/core/configs/asset/app_images.dart';
import 'package:noorjenner/core/configs/asset/app_vectors.dart';
import 'package:noorjenner/core/configs/theme/app_colors.dart';
import 'package:noorjenner/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                image: AssetImage(AppImages.introBG),
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
                  'Enjoy listening to music',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // The text to be displayed.
                const SizedBox(height: 21.0),
                // icon section
                const Text(
                  'Enjoy uninterrupted music with Noor Jenner. No ads, just pure listening pleasure.',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),

                // icon section
                SizedBox(
                  height: 20.0,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseMode(),
                      ),
                    );
                  },
                  title: 'Get Started',
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
