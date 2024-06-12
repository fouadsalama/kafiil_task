import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/constants.dart';
import 'package:kafiil_test/core/utils/custom_title_pages.dart';
import 'package:kafiil_test/core/utils/styles.dart';

import 'countries_and_capitals_list_view.dart';
import 'country_and_capital_widget.dart';

class CountriesViewBody extends StatelessWidget {
  const CountriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(55),
          CustomTitlePages(text: 'Countries'),
          Gap(32),
          Card(
            elevation: 0.5,
            child: SizedBox(
              height: 330,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 14),
                    child: CountryAndCapitalWidget(),
                  ),
                  CountriesAndCapitalsListView(),
                ],
              ),
            ),
          ),
          Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCountryPageIndex(),
              CustomCountryPageIndex(),
            ],
          )
        ],
      ),
    );
  }
}

class CustomCountryPageIndex extends StatelessWidget {
  const CustomCountryPageIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
            child: Text(
          '1',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xffFFFFFF),
          ),
        )),
      ),
    );
  }
}
