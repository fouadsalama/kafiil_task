import 'package:flutter/material.dart';

class CustomCircleWidget extends StatelessWidget {
  const CustomCircleWidget({
    super.key,
    required this.color,
    this.widget,
    required this.backgroundColor,
  });
  final Color color, backgroundColor;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: color,
        ),
      ),
      child: Center(
        child: widget,
      ),
    );
  }
}
