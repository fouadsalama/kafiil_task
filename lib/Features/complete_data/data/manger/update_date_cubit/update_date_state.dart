part of 'update_date_cubit.dart';

@immutable
sealed class UpdateDateState {}

final class UpdateDateInitial extends UpdateDateState {}

class UpdateDateSuccess extends UpdateDateState {}
