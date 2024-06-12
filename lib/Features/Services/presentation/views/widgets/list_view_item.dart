import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';
import 'package:kafiil_test/Features/Services/presentation/views/widgets/custom_image_price.dart';

import 'custom_title.dart';
import 'rating_widget.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.model,
  });
  final DataModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 192,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          CustomImageAndPrice(
            model: model,
          ),
          const Gap(8),
          CustomTitle(
            model: model,
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingWidget(
                text: "${model.averageRating}",
                color: const Color(0xffFFCB31),
                icon: Icons.star,
              ),
              const Gap(6),
              const Text(
                '|',
                style: TextStyle(
                  color: Color(0xffC3C5C8),
                ),
              ),
              const Gap(6),
              RatingWidget(
                text: '${model.completedSalesCount}',
                color: const Color(0xff828282),
                icon: Icons.shopping_basket_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
