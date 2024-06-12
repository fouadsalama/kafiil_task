import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
  });
  final String text;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: color,
        ),
        const Gap(4),
        Text(
          text,
          style: Styles.textStyle11.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
