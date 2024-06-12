import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kafiil_test/Features/countries/data/models/country_model/datum.dart';
import 'package:kafiil_test/Features/countries/data/repo/country_repo.dart';
import 'package:kafiil_test/core/errors/failure.dart';
import 'package:kafiil_test/core/utils/api_service.dart';

class CountryRepoImpl implements CountryRepo {
  final ApiService apiService;

  CountryRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Datum>>> fetchCountry() async {
    try {
      var response = await apiService.get(endPoint: 'api/test/country');

      List<Datum> countryList = [];
      for (var countryData in response['data']) {
        try {
          countryList.add(Datum.fromJson(countryData));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(countryList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
