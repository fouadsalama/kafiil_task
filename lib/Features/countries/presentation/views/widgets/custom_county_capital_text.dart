import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomCountryCapitalText extends StatelessWidget {
  const CustomCountryCapitalText({
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
      ),
    );
  }
}
