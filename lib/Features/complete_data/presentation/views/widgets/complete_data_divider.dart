import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../register/presentation/views/widgets/custom_circle_widget.dart';
import '../../../../register/presentation/views/widgets/divider_widget.dart';

class CompleteDataDivider extends StatelessWidget {
  const CompleteDataDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DividerWidget(
          color: kPrimaryColor,
        ),
        CustomCircleWidget(
          color: kPrimaryColor,
          widget: Icon(
            Icons.check,
            size: 15,
            color: Colors.white,
          ),
          backgroundColor: kPrimaryColor,
        ),
        DividerWidget(
          color: kPrimaryColor,
        ),
        CustomCircleWidget(
          color: kPrimaryColor,
          backgroundColor: Colors.white,
          widget: Text(
            '2',
            style: Styles.textStyle12,
          ),
        ),
        DividerWidget(
          color: kDividerColor,
        ),
      ],
    );
  }
}
