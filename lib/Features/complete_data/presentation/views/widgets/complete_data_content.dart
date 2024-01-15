import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kafiil_test/Features/register/presentation/views/widgets/custom_button.dart';
import 'package:kafiil_test/core/utils/app_router.dart';
import '../../../../../constants.dart';
import '../../../../register/presentation/views/widgets/custom_text_form_failed.dart';
import '../../../../register/presentation/views/widgets/title_register_page.dart';
import 'birthday_section.dart';
import 'complete_data_divider.dart';
import 'custom_image_profile.dart';
import 'favorite_social_media_section.dart';
import 'gender_section.dart';
import 'salary_box.dart';
import 'skills_section.dart';

class CompleteDataContent extends StatelessWidget {
  const CompleteDataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const Gap(32),
        const TitleRegisterPage(
          color: kPrimaryColor,
        ),
        const Gap(14),
        const CompleteDataDivider(),
        const Gap(32),
        const CustomImageProfile(),
        const Gap(16),
        const CustomDisplayTextFormFailed(
          title: 'About',
          height: 113,
          maxLines: 10,
        ),
        const SalaryBox(),
        const CustomBirthDate(),
        const GenderSection(),
        const SkillsSection(),
        const FavoriteSocialMediaSection(),
        CustomButton(
          text: 'Submit',
          onTap: () {
            GoRouter.of(context).push(AppRouter.kWhoAmIView);
          },
        ),
        const Gap(30)
      ],
    );
  }
}
