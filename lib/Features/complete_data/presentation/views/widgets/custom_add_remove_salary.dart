import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomAddAndRemoveSalary extends StatelessWidget {
  const CustomAddAndRemoveSalary({
    super.key,
    required this.icon,
    this.onTap,
  });
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: SizedBox(
          width: 24,
          height: 24,
          child: Icon(
            icon,
            size: 15,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
