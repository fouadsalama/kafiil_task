import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_text.dart';

class TitleRegisterPage extends StatelessWidget {
  const TitleRegisterPage({
    super.key,
    this.color = kDividerColor,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CustomText(
          text: 'Register',
          color: kPrimaryColor,
        ),
        CustomText(
          text: 'Complete Data',
          color: color,
        ),
      ],
    );
  }
}
