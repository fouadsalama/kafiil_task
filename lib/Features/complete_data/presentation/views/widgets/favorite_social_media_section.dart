import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/widgets/custom_text_title.dart';
import 'social_media_item.dart';

class FavoriteSocialMediaSection extends StatelessWidget {
  const FavoriteSocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextTitle(text: 'Favourite Social Media'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SocialMediaItem(
              iconImage: AppAssets.kChecked,
              socialMediaType: 'Facebook',
              icon: FontAwesomeIcons.facebook,
              iconColor: Color(0xff1877F2),
            ),
            SocialMediaItem(
              iconImage: AppAssets.kChecked,
              socialMediaType: 'Twitter',
              icon: FontAwesomeIcons.squareTwitter,
              iconColor: Color(0xff1DA1F2),
            ),
            SocialMediaItem(
              iconImage: AppAssets.kUnChecked,
              socialMediaType: 'LinkedIn',
              icon: FontAwesomeIcons.linkedin,
              iconImageColor: kIconsColor,
              iconColor: Color(0xff2867B2),
            ),
            Gap(32),
          ],
        ),
      ],
    );
  }
}
