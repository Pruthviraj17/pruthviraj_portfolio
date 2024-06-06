import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
// import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconsWidget extends StatelessWidget {
  const SocialMediaIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 15,
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
        socialIcon(
          link: 'https://www.youtube.com/channel/UCVDIo778Yw-x3V1XuVf6_-g',
          iconPath: SocialIconsFlutter.youtube,
        ),
        socialIcon(
          link: 'https://www.linkedin.com/in/pruthviraj17/',
          iconPath: SocialIconsFlutter.linkedin,
        ),
        socialIcon(
          link: 'https://github.com/Pruthviraj17',
          iconPath: SocialIconsFlutter.github,
        ),
        socialIcon(
          link: 'https://www.instagram.com/pruthvirajhaladkar/',
          iconPath: SocialIconsFlutter.instagram,
        ),
        socialIcon(
          link: 'https://x.com/hey_Pruthviraj_',
          iconPath: SocialIconsFlutter.twitter,
        ),
        socialIcon(
          link: 'https://open.spotify.com/user/31q4vvyxprmc4sxe67gpfadmrleu',
          iconPath: SocialIconsFlutter.spotify,
        ),
        // socialIcon(
        //   link:
        //       'https://discord.com/channels/1247165960889040916/1247165961451212802',
        //   iconPath: SocialIconsFlutter.discord,
        // ),
      ],
    );
  }

  Widget socialIcon({required String link, required IconData iconPath}) {
    return InkWell(
      onTap: () => launchURL(link),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SocialWidget(
            placeholderText: '',
            iconData: iconPath,
            iconColor: Colors.white,
            link: link,
          ),
        ],
      ),
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
