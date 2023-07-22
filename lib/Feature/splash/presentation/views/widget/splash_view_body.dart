import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Lottie.asset(AssetsData.imageLottie),
        Image.asset(
          AssetsData.logo,
          scale: 1.5,
        ),
        Center(
          child: Text(
            'Read Free Books',
          ),
        ),
      ],
    );
  }
}
