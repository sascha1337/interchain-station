import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData iconData;
  final String? url;
  final String? title;

  const SocialMediaButton({
    Key? key,
    required this.iconData,
    required this.url,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: FaIcon(
        iconData,
        semanticLabel: title,
        color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      ),
      onPressed: url != null ? () { _launchUrl(url); } : null,
    );
  }

  void _launchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }

}
