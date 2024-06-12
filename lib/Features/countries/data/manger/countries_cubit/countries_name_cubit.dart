import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kafiil_test/Features/countries/data/models/country_model/datum.dart';
import 'package:kafiil_test/Features/countries/data/repo/country_repo.dart';

part 'countries_name_state.dart';

class CountriesNameCubit extends Cubit<CountriesNameState> {
  CountriesNameCubit(this.countryRepo) : super(CountriesNameInitial());

  final CountryRepo countryRepo;

  Future<void> fetchCountyName() async {
    emit(CountriesNameLoading());
    var results = await countryRepo.fetchCountry();
    return results.fold((failure) {
      emit(CountriesNameFailure(failure.errorMessage));
    }, (data) {
      emit(
        CountriesNameSuccess(data),
      );
    });
  }
}
