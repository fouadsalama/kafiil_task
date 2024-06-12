import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/core/utils/custom_title_pages.dart';

import 'custom_popular_service_list_view.dart';
import 'custom_service_list_view.dart';

class ServicesViewBody extends StatelessWidget {
  const ServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          Gap(55),
          CustomTitlePages(text: 'Services'),
          Gap(32),
          CustomServiceListView(),
          Gap(40),
          CustomTitlePages(text: 'Popular Services'),
          Gap(32),
          CustomPopularServiceListView(),
        ],
      ),
    );
  }
}
