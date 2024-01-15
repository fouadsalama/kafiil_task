import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_gender_state.dart';

class ChangeGenderCubit extends Cubit<ChangeGenderState> {
  ChangeGenderCubit() : super(ChangeGenderInitial());

  bool isSelected = false;

  void changeGender(String value) {
    if (value == 'male') {
      isSelected = false;
      emit(ChangeGenderMale());
    } else {
      isSelected = true;
      emit(ChangeGenderFemale());
    }
  }
}
