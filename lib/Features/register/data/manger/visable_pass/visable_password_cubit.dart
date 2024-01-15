import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'visable_password_state.dart';

class VisablePasswordCubit extends Cubit<VisablePasswordState> {
  VisablePasswordCubit() : super(VisablePasswordInitial());
  bool isVisable = false;

  void viabilityIcon() {
    emit(VisablePasswordOff());

    isVisable = !isVisable;

    emit(VisablePasswordOn());
  }
}
