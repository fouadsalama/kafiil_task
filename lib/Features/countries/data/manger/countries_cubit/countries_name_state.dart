part of 'countries_name_cubit.dart';

sealed class CountriesNameState extends Equatable {
  const CountriesNameState();

  @override
  List<Object> get props => [];
}

final class CountriesNameInitial extends CountriesNameState {}

class CountriesNameLoading extends CountriesNameState {}

class CountriesNameSuccess extends CountriesNameState {
  final List<Datum> data;

  const CountriesNameSuccess(this.data);
}

class CountriesNameFailure extends CountriesNameState {
  final String errMessage;

  const CountriesNameFailure(this.errMessage);
}
