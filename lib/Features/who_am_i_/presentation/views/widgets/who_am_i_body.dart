import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/Features/complete_data/presentation/views/widgets/custom_image_profile.dart';
import 'package:kafiil_test/Features/register/presentation/views/widgets/user_type_section.dart';
import 'package:kafiil_test/constants.dart';
import 'package:kafiil_test/core/utils/styles.dart';

class WhoAmIViewBody extends StatelessWidget {
  const WhoAmIViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: WhoAmIForm(),
    );
  }
}

class WhoAmIForm extends StatelessWidget {
  const WhoAmIForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: const [
              // Gap(55),
              Text(
                'Who Am I',
                style: Styles.textStyle18,
              ),
              // Gap(32),
              CustomImageProfile(),
              // Gap(32),
              Row(
                children: [
                  CustomDisplayDataWidget(
                    title: 'First Name',
                    text: 'Fouad',
                  ),
                  // Gap(9),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle12.copyWith(
        color: kTitleColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CustomDisplayDataWidget extends StatelessWidget {
  const CustomDisplayDataWidget({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitleWidget(
            text: title,
          ),
          const Gap(8),
          Container(
            // height: 56,
            padding: const EdgeInsets.only(
              left: 22,
              top: 19,
              bottom: 19,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              // color: const Color(0xffF9F9F9),
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              text,
              style: Styles.textStyle16,
            ),
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
