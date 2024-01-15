import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiil_test/Features/complete_data/data/manger/counter_cubit/counter_salary_cubit.dart';
import '../../../../../core/widgets/complete_data_box.dart';
import 'salary_box_content.dart';

class SalaryBox extends StatelessWidget {
  const SalaryBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterSalaryCubit, CounterSalaryState>(
      builder: (context, state) {
        final sal = BlocProvider.of<CounterSalaryCubit>(context).salary;
        return CustomDataBox(
          text: 'Salary',
          child: SalaryBoxContent(sal: sal),
        );
      },
    );
  }
}
