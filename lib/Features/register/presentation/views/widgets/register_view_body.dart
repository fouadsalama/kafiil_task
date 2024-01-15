import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

import 'custom_register_body_content.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(55),
          CustomAppBarWidgets(
            text: 'Register',
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          const Expanded(
            child: RegisterBodyContent(),
          ),
        ],
      ),
    );
  }
}
