part of 'counter_salary_cubit.dart';

@immutable
sealed class CounterSalaryState {}

final class CounterSalaryInitial extends CounterSalaryState {}

class CounterSalaryAdd extends CounterSalaryState {}

class CounterSalaryRemove extends CounterSalaryState {}
