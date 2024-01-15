import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_salary_state.dart';

class CounterSalaryCubit extends Cubit<CounterSalaryState> {
  CounterSalaryCubit() : super(CounterSalaryInitial());
  int salary = 100;
  void addSalary() {
    salary += 100;
    emit(CounterSalaryAdd());
  }

  void removeSalary() {
    salary > 0 ? salary -= 100 : 0;
    emit(CounterSalaryRemove());
  }
}
