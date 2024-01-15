import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomRememberAndChangePass extends StatelessWidget {
  const CustomRememberAndChangePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.check_box,
              size: 17,
              color: kPrimaryColor,
            ),
            const Gap(8),
            Text(
              'Remember me',
              style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xff696F79),
              ),
            ),
          ],
        ),
        Text(
          'Forgot Password?',
          style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w500, color: const Color(0xff696F79)),
        ),
      ],
    );
  }
}
