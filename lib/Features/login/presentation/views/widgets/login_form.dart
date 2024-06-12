import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kafiil_test/core/utils/app_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../register/presentation/views/widgets/custom_button.dart';
import '../../../../register/presentation/views/widgets/custom_text_form_failed.dart';
import 'custom_create_account.dart';
import 'custom_remember_change_pass.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const CustomAppBarWidgets(
          text: 'Account Login',
        ),
        const Gap(32),
        Image.asset(AppAssets.kLoginPage),
        const Gap(20),
        const CustomDisplayTextFormFailed(
          title: 'Email Address',
        ),
        CustomDisplayTextFormFailed(
          title: 'Password',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.visibility_off,
              color: kIconsColor,
            ),
          ),
        ),
        const Gap(10),
        const CustomRememberAndChangePass(),
        const Gap(32),
        CustomButton(
          text: 'Login',
          onTap: () {
            GoRouter.of(context).push(AppRouter.kWhoAmIView);
          },
        ),
        const Gap(24),
        const CustomCreateAccount(),
        const Gap(30),
      ],
    );
  }
}
