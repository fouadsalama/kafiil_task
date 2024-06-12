import 'package:flutter/material.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomImageAndPrice extends StatelessWidget {
  const CustomImageAndPrice({
    super.key,
    required this.model,
  });
  final DataModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 103,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(model.mainImage!),
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 6,
          bottom: 7,
          child: Container(
            width: 60,
            height: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: kPrimaryColor,
            ),
            child: Center(
              child: Text(
                '\$ ${model.price}',
                style: Styles.textStyle12.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
