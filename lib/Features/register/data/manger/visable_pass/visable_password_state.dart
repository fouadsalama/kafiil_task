part of 'visable_password_cubit.dart';

sealed class VisablePasswordState extends Equatable {
  const VisablePasswordState();

  @override
  List<Object> get props => [];
}

final class VisablePasswordInitial extends VisablePasswordState {}

class VisablePasswordOn extends VisablePasswordState {}

class VisablePasswordOff extends VisablePasswordState {}
