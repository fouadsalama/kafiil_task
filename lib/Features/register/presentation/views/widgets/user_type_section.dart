import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_test/Features/register/data/manger/user_type_select_cubit/user_type_select_cubit.dart';
import 'package:kafiil_test/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../../../complete_data/presentation/views/widgets/gender_content.dart';

class UserTypeSection extends StatefulWidget {
  const UserTypeSection({
    super.key,
  });

  @override
  State<UserTypeSection> createState() => _UserTypeSectionState();
}

class _UserTypeSectionState extends State<UserTypeSection> {
  int numberType = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserTypeSelectCubit, UserTypeSelectState>(
      builder: (context, state) {
        var userType = BlocProvider.of<UserTypeSelectCubit>(context).numberType;
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Type',
                style: Styles.textStyle12.copyWith(
                  color: kTitleColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  GenderContent(
                    text: 'Buyer',
                    icon: userType == 1
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: userType == 1 ? kPrimaryColor : kIconsColor,
                    onTap: () {
                      BlocProvider.of<UserTypeSelectCubit>(context)
                          .selectNumberType(type: 'buyer');
                    },
                  ),
                  GenderContent(
                    text: 'Seller',
                    icon: userType == 2
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: userType == 2 ? kPrimaryColor : kIconsColor,
                    onTap: () {
                      BlocProvider.of<UserTypeSelectCubit>(context)
                          .selectNumberType(type: 'seller');
                    },
                  ),
                  GenderContent(
                    text: 'Both',
                    icon: userType == 3
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    color: userType == 3 ? kPrimaryColor : kIconsColor,
                    onTap: () {
                      BlocProvider.of<UserTypeSelectCubit>(context)
                          .selectNumberType(type: 'both');
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
