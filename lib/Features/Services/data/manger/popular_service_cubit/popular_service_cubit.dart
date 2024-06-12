import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kafiil_test/Features/Services/data/models/service_model/datum.dart';
import 'package:kafiil_test/Features/Services/data/repo/service_repo.dart';

part 'popular_service_state.dart';

class PopularServiceCubit extends Cubit<PopularServiceState> {
  PopularServiceCubit(this.serviceRepo) : super(PopularServiceInitial());
  ServiceRepo serviceRepo;

  Future<void> fetchPopularServices() async {
    emit(PopularServiceLoading());
    var results = await serviceRepo.fetchPopularServiceData();

    return results.fold((failure) {
      emit(PopularServiceFailure(failure.errorMessage));
    }, (data) {
      emit(PopularServiceSuccess(data));
    });
  }
}
