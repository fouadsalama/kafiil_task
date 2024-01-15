import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_circle_widget.dart';
import 'divider_widget.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
    this.widget,
  });
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DividerWidget(
          color: kPrimaryColor,
        ),
        CustomCircleWidget(
          color: kPrimaryColor,
          widget: Text(
            '1',
            style: GoogleFonts.montserrat(
              textStyle: Styles.textStyle12,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        const DividerWidget(
          color: kDividerColor,
        ),
        const CustomCircleWidget(
          color: kDividerColor,
          backgroundColor: kDividerColor,
        ),
        const DividerWidget(
          color: kDividerColor,
        ),
      ],
    );
  }
}
