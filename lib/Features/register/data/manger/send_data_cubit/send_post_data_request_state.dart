part of 'send_post_data_request_cubit.dart';

@immutable
sealed class SendPostDataRequestState {}

final class SendPostDataRequestInitial extends SendPostDataRequestState {}

class SendPostDataRequestLoading extends SendPostDataRequestState {}

class SendPostDataRequestSuccess extends SendPostDataRequestState {}

class SendPostDataRequestFailure extends SendPostDataRequestState {
  final String errorMessage;

  SendPostDataRequestFailure(this.errorMessage);
}
