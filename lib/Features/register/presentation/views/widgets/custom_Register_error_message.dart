import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomRegisterErrorMessage extends StatelessWidget {
  const CustomRegisterErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xffFFF0ED),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const Gap(20),
          const Icon(
            Icons.info_outline,
            color: kErrorColor,
          ),
          const Gap(8),
          Text(
            'Fill the required fields',
            style: Styles.textStyle12.copyWith(
              color: kErrorColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
