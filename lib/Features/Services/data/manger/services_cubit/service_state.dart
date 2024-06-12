part of 'service_cubit.dart';

sealed class ServiceState extends Equatable {
  const ServiceState();

  @override
  List<Object> get props => [];
}

final class ServiceInitial extends ServiceState {}

class ServiceLoading extends ServiceState {}

class ServiceSuccess extends ServiceState {
  final List<DataModel> data;

  const ServiceSuccess(this.data);
}

class ServiceFailure extends ServiceState {
  final String errMessage;

  const ServiceFailure(this.errMessage);
}
