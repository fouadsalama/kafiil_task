import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_title_widget.dart';

class CustomDisplayDataWidget extends StatelessWidget {
  const CustomDisplayDataWidget({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTitleWidget(
            text: title,
          ),
          const Gap(8),
          Container(
            // height: 56,
            padding: const EdgeInsets.only(
              left: 22,
              top: 19,
              bottom: 19,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffF9F9F9),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              text,
              style: Styles.textStyle16,
            ),
          ),
          const Gap(16),
        ],
      ),
    );
  }
}
