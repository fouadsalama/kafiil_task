import 'package:dartz/dartz.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';
import 'package:kafiil_test/core/errors/failure.dart';

abstract class ServiceRepo {
  Future<Either<Failure, List<DataModel>>> fetchServiceData();
  Future<Either<Failure, List<DataModel>>> fetchPopularServiceData();
}
