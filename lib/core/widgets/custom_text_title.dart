import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class CustomTextTitle extends StatelessWidget {
  const CustomTextTitle({
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
