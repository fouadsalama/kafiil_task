import 'package:flutter/material.dart';

import 'custom_county_capital_text.dart';

class CountryAndCapitalWidget extends StatelessWidget {
  const CountryAndCapitalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCountryCapitalText(
            text: 'Country',
          ),
          CustomCountryCapitalText(
            text: 'Capital',
          ),
        ],
      ),
    );
  }
}
