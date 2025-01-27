import 'package:flutter/material.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: "View on a computer for better experience.",
            fontSize: (size.width >= 950) ? large : smallMedium,
          ),
          // if (size.width >= 950)
          SizedBox(
            width: size.width * 0.06,
            height: size.height * 0.06,
            child: const RiveAnimation.asset(AppImages.flutterIconRive),
          ),

          Image(image: NetworkImage("https://skillicons.dev/icons?i=java"))
        ],
      ),
    );
  }
}
