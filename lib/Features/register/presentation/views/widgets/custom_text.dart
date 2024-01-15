import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle12.copyWith(
        color: color,
      ),
    );
  }
}
