import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_type_select_state.dart';

class UserTypeSelectCubit extends Cubit<UserTypeSelectState> {
  UserTypeSelectCubit() : super(UserTypeSelectInitial());
  int numberType = 1;
  void selectNumberType({
    required String type,
  }) {
    if (type == 'buyer') {
      numberType = 1;
      print(numberType);
      emit(UserTypeSelectedBuyer());
    } else if (type == 'seller') {
      numberType = 2;
      print(numberType);
      emit(UserTypeSelectedSeller());
    } else if (type == 'both') {
      numberType = 3;
      print(numberType);
      emit(UserTypeSelectedBoth());
    }
  }
}
