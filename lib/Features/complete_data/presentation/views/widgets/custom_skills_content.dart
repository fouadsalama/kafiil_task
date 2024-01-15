import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomSkillsContent extends StatelessWidget {
  const CustomSkillsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      margin: const EdgeInsets.only(left: 11, top: 11),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xffE9F9F1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Text(
            'Video Production',
            style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(3),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.close,
                size: 7 * 2,
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
