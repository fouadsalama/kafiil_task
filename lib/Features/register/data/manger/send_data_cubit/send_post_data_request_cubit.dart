import 'package:bloc/bloc.dart';
import 'package:kafiil_test/core/utils/api_service.dart';
import 'package:meta/meta.dart';

part 'send_post_data_request_state.dart';

class SendPostDataRequestCubit extends Cubit<SendPostDataRequestState> {
  SendPostDataRequestCubit(this.apiService)
      : super(SendPostDataRequestInitial());
  final ApiService apiService;
  void registerData() async {
    emit(SendPostDataRequestLoading());
    // try {
    //   final response = await registerUser();
  }
}
