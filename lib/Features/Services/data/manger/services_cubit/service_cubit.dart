import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';
import 'package:kafiil_test/Features/Services/data/repo/service_repo.dart';

part 'service_state.dart';

class ServiceCubit extends Cubit<ServiceState> {
  ServiceCubit(this.serviceRepo) : super(ServiceInitial());
  final ServiceRepo serviceRepo;

  Future<void> fetchServices() async {
    emit(ServiceLoading());
    var results = await serviceRepo.fetchServiceData();

    return results.fold((failure) {
      emit(ServiceFailure(failure.errorMessage));
    }, (data) {
      emit(ServiceSuccess(data));
    });
  }
}
