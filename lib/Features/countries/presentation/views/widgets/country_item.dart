import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CountryItem extends StatelessWidget {
  const CountryItem({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle12.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
