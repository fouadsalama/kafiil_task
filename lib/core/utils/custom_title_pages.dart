import 'package:flutter/material.dart';

import 'styles.dart';

class CustomTitlePages extends StatelessWidget {
  const CustomTitlePages({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle18,
    );
  }
}
