import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class SocialMediaItem extends StatelessWidget {
  const SocialMediaItem({
    super.key,
    required this.iconImage,
    required this.socialMediaType,
    required this.icon,
    required this.iconColor,
    this.iconImageColor,
  });
  final String iconImage, socialMediaType;
  final IconData icon;
  final Color? iconColor, iconImageColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: Image(
        width: 22,
        height: 22,
        color: iconImageColor,
        image: AssetImage(
          iconImage,
        ),
      ),
      title: Row(
        children: [
          FaIcon(
            icon,
            color: iconColor,
          ),
          const Gap(8),
          Text(
            socialMediaType,
            style: Styles.textStyle14,
          ),
        ],
      ),
    );
  }
}
