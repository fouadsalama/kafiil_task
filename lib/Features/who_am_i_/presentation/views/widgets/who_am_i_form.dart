import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/custom_title_pages.dart';
import '../../../../complete_data/presentation/views/widgets/custom_image_profile.dart';
import '../../../../complete_data/presentation/views/widgets/favorite_social_media_section.dart';
import '../../../../complete_data/presentation/views/widgets/gender_section.dart';
import '../../../../register/presentation/views/widgets/user_type_section.dart';
import 'custom_display_data_widget.dart';

class WhoAmIForm extends StatelessWidget {
  const WhoAmIForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Gap(55),
          CustomTitlePages(
            text: 'Who Am I',
          ),
          Gap(32),
          CustomImageProfile(),
          Gap(32),
          Row(
            children: [
              CustomDisplayDataWidget(
                title: 'First Name',
                text: 'Fouad',
              ),
              Gap(9),
              CustomDisplayDataWidget(
                title: 'Last Name',
                text: 'Salama',
              ),
            ],
          ),
          CustomDisplayDataWidget(
            title: 'Email Address',
            text: 'Fouad@gmail.com',
          ),
          CustomDisplayDataWidget(
            title: 'Password',
            text: '123456789',
          ),
          UserTypeSection(),
          CustomDisplayDataWidget(
            title: 'About',
            text:
                'Lorem ipsum dolor sit amet consectetur. Odio urna sed velit et sed quis. Enim ut sed. sed quis. Enim ut sed.',
          ),
          CustomDisplayDataWidget(
            title: 'Salary',
            text: 'SAR 4500',
          ),
          CustomDisplayDataWidget(
            title: 'Birth Date',
            text: '2000-12-07',
          ),
          GenderSection(),
          FavoriteSocialMediaSection(),
        ],
      ),
    );
  }
}
