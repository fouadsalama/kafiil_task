part of 'user_type_select_cubit.dart';

sealed class UserTypeSelectState extends Equatable {
  const UserTypeSelectState();

  @override
  List<Object> get props => [];
}

final class UserTypeSelectInitial extends UserTypeSelectState {}

class UserTypeSelectDefault extends UserTypeSelectState {}

class UserTypeSelectedBuyer extends UserTypeSelectState {}

class UserTypeSelectedSeller extends UserTypeSelectState {}

class UserTypeSelectedBoth extends UserTypeSelectState {}
