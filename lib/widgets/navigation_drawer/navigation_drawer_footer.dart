import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:althea/services/theme_service.dart';
import 'package:althea/widgets/commons/social_media_button.dart';

class NavigationDrawerFooter extends StatelessWidget {

  const NavigationDrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Price data from CoinGecko",
              style: TextStyle(color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor),
            ),
            const SizedBox(height: ThemeService.margin8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialMediaButton(
                  iconData: FontAwesomeIcons.discord,
                  url: "https://discord.gg/Juno",
                  title: "Discord",
                ),
                SizedBox(width: 7.0,),
                SocialMediaButton(
                  iconData: FontAwesomeIcons.telegram,
                  url: "https://t.me/JunoNetwork",
                  title: "Telegram",
                ),
                SocialMediaButton(
                  iconData: FontAwesomeIcons.twitter,
                  url: "https://twitter.com/JunoNetwork",
                  title: "Twitter",
                ),
                SocialMediaButton(
                  iconData: FontAwesomeIcons.github,
                  url: "https://github.com/CosmosContracts",
                  title: "GitHub",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
