import 'package:flutter/material.dart';
import 'package:my_portfolio/components/app_image_widget.dart';
import 'package:my_portfolio/components/popins_text_widget.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:url_launcher/url_launcher.dart';

class Project1Widget extends StatelessWidget {
  const Project1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PoppinsTextWidget(
                    text: "Academics Project",
                    color: purple,
                    fontSize: medium,
                  ),
                  const PoppinsTextWidget(
                    text: "LIFE-GUARDIAN | Disaster Management",
                    color: projectTitleColor,
                    fontSize: large,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Positioned(
                        left: 0,
                        top: 0,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.circular(small)),
                          child: AppImageWidget(
                            path: AppImages.projectTextCard,
                            // imageWidth: size.width * 0.4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: SizedBox(
                          width: size.width * 0.4,
                          child: const PoppinsTextWidget(
                            text:
                                "LifeGuardian is a mobile app empowering communities with real-time information and collaboration tools during emergencies.Real-time location sharing connects you with nearby rescue, disaster alerts keep you informed, and safety events empower communities. \nStacks - Flutter, Dart, Node.js, Express.js, Socket.io, GeoJSON, MongoDB",
                            fontSize: smallMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Row(
                          children: [
                            AppImageWidget(
                              path: AppImages.clickIcon,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppImageWidget(
                              path: AppImages.clickIcon,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: large,
                        ),
                        Tooltip(
                          message:
                              "🌟 Feel free to Fork, Clone, Commit, Push, and Create a Pull Request to Contribute!",
                          child: TextButton(
                            onPressed: () =>
                                launchURL("https://github.com/life-guardian"),
                            child: const PoppinsTextWidget(
                              text: "View Organization",
                              fontSize: smallMedium,
                              color: purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Positioned(
                left: size.width * 0.35,
                child: AppImageWidget(
                  path: AppImages.bgGradientPurple,
                  imageWidth: size.width * 0.26,
                ),
              ),
              Positioned(
                left: size.width * 0.45,
                child: AppImageWidget(
                  path: AppImages.bgGradientPurple,
                  imageWidth: size.width * 0.26,
                ),
              ),
              Positioned(
                left: size.width * 0.39,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: AppImageWidget(
                    path: AppImages.lifeGuradianImage,
                    imageWidth: size.width * 0.35,
                  ),
                ),
              ),
              const SizedBox(
                height: 500,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
