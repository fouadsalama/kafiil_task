part of 'popular_service_cubit.dart';

sealed class PopularServiceState extends Equatable {
  const PopularServiceState();

  @override
  List<Object> get props => [];
}

final class PopularServiceInitial extends PopularServiceState {}

class PopularServiceLoading extends PopularServiceState {}

class PopularServiceSuccess extends PopularServiceState {
  final List<DataModel> data;

  const PopularServiceSuccess(this.data);
}

class PopularServiceFailure extends PopularServiceState {
  final String errMessage;

  const PopularServiceFailure(this.errMessage);
}
