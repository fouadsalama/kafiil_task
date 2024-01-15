import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/manger/counter_cubit/counter_salary_cubit.dart';
import 'custom_add_remove_salary.dart';

class SalaryBoxContent extends StatelessWidget {
  const SalaryBoxContent({
    super.key,
    required this.sal,
  });

  final int sal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomAddAndRemoveSalary(
          icon: Icons.remove,
          onTap: () {
            BlocProvider.of<CounterSalaryCubit>(context).removeSalary();
          },
        ),
        Text(
          'SAR $sal',
          style: Styles.textStyle16,
          textAlign: TextAlign.center,
        ),
        CustomAddAndRemoveSalary(
          icon: Icons.add,
          onTap: () {
            BlocProvider.of<CounterSalaryCubit>(context).addSalary();
          },
        ),
      ],
    );
  }
}
