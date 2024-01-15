part of 'change_gender_cubit.dart';

@immutable
sealed class ChangeGenderState {}

final class ChangeGenderInitial extends ChangeGenderState {}

class ChangeGenderFemale extends ChangeGenderState {}

class ChangeGenderMale extends ChangeGenderState {}
