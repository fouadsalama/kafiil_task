import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/constants.dart';

import '../../../../../core/utils/styles.dart';

class CustomDisplayTextFormFailed extends StatelessWidget {
  const CustomDisplayTextFormFailed({
    super.key,
    required this.title,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.height = 56,
    this.controller,
    this.validator,
    this.onChanged,
    this.obscureText = false,
  });
  final String title;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final int maxLines;
  final double height;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle12.copyWith(
            color: kTitleColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(8),
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            validator: validator,
            onChanged: onChanged,
            keyboardType: keyboardType,
            maxLines: maxLines,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              border: InputBorder.none,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
        const Gap(16),
      ],
    );
  }
}
