import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:kafiil_test/Features/complete_data/data/manger/change_gender_cubit/change_gender_cubit.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'gender_content.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeGenderCubit, ChangeGenderState>(
      builder: (context, state) {
        final isSelectedGender =
            BlocProvider.of<ChangeGenderCubit>(context).isSelected;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            Text(
              'Gender',
              style: Styles.textStyle12.copyWith(
                color: kTitleColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(16),
            Row(
              children: [
                GenderContent(
                  text: 'Male',
                  icon: isSelectedGender == false
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: isSelectedGender ? kIconsColor : kPrimaryColor,
                  onTap: () {
                    BlocProvider.of<ChangeGenderCubit>(context)
                        .changeGender('male');
                  },
                ),
                GenderContent(
                  text: 'Female',
                  icon: isSelectedGender
                      ? Icons.radio_button_checked
                      : Icons.radio_button_unchecked,
                  color: isSelectedGender ? kPrimaryColor : kIconsColor,
                  onTap: () {
                    BlocProvider.of<ChangeGenderCubit>(context)
                        .changeGender('female');
                  },
                ),
              ],
            ),
            const Gap(16),
          ],
        );
      },
    );
  }
}
