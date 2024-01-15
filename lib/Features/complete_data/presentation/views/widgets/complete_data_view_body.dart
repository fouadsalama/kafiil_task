import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kafiil_test/core/widgets/custom_app_bar.dart';

import 'complete_data_content.dart';

class CompleteDataViewBody extends StatelessWidget {
  const CompleteDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(55),
          CustomAppBarWidgets(
            onTap: () {
              GoRouter.of(context).pop();
            },
            text: 'Register',
          ),
          const Expanded(
            child: CompleteDataContent(),
          ),
        ],
      ),
    );
  }
}
