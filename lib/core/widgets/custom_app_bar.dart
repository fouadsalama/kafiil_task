import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomAppBarWidgets extends StatelessWidget {
  const CustomAppBarWidgets({
    super.key,
    this.onTap,
    required this.text,
  });
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: const Icon(Icons.arrow_back_ios),
        ),
        Text(
          text,
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
