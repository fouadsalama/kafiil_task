import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';
import 'package:kafiil_test/Features/Services/data/repo/service_repo.dart';
import 'package:kafiil_test/core/errors/failure.dart';
import 'package:kafiil_test/core/utils/api_service.dart';

class ServiceRepoImpl implements ServiceRepo {
  ApiService apiService;

  ServiceRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<DataModel>>> fetchServiceData() async {
    try {
      var response = await apiService.get(endPoint: 'api/test/service');
      List<DataModel> serviceList = [];
      for (var item in response['data']) {
        try {
          serviceList.add(DataModel.fromJson(item));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(serviceList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<DataModel>>> fetchPopularServiceData() async {
    try {
      var response = await apiService.get(endPoint: 'api/test/service/popular');
      List<DataModel> serviceList = [];
      for (var item in response['data']) {
        try {
          serviceList.add(DataModel.fromJson(item));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(serviceList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
