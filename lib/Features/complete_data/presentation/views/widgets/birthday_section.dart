import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../data/manger/update_date_cubit/update_date_cubit.dart';
import '../../../../../core/widgets/complete_data_box.dart';

class CustomBirthDate extends StatelessWidget {
  const CustomBirthDate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDateCubit, UpdateDateState>(
      builder: (context, state) {
        final selectDate =
            BlocProvider.of<UpdateDateCubit>(context).selectedDate;
        return CustomDataBox(
          text: 'Birth Date',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  '${selectDate.day}/${selectDate.month}/${selectDate.year}',
                ),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<UpdateDateCubit>(context).selectDate(context);
                },
                icon: const Icon(
                  Icons.calendar_month,
                  size: 18,
                  color: kIconsColor,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
