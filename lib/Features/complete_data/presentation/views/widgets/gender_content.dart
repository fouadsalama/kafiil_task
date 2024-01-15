import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class GenderContent extends StatelessWidget {
  const GenderContent({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final Color color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            icon,
            size: 22,
            color: color,
          ),
          title: Text(
            text,
            style: Styles.textStyle14,
          ),
        ),
      ),
    );
  }
}
