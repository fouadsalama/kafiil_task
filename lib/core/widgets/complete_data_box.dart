import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_text_title.dart';

class CustomDataBox extends StatelessWidget {
  const CustomDataBox({
    super.key,
    required this.text,
    this.child,
    this.height = 56,
  });
  final String text;
  final Widget? child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextTitle(text: text),
        const Gap(8),
        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
          child: child,
        ),
        const Gap(16),
      ],
    );
  }
}
