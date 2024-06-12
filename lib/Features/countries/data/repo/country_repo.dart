import 'package:dartz/dartz.dart';
import 'package:kafiil_test/Features/countries/data/models/country_model/datum.dart';
import 'package:kafiil_test/core/errors/failure.dart';

abstract class CountryRepo {
  Future<Either<Failure, List<Datum>>> fetchCountry();
}
