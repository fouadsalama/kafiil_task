import 'package:flutter/material.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';

import '../../../../../core/utils/styles.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.model,
  });
  final DataModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9),
      child: Text(
        model.title!,
        style: Styles.textStyle11,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
