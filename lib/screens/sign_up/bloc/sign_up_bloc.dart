import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ldms_mobile_app/screens/add_devices/models/device_data_model.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  int postPage = 0;
  SignUpBloc() : super(SignUpState.initial()) {
    on<PasswordEyeButtonClicked>((event, emit) async {
      bool isShow = !state.passwordVisibility;
      emit(state.copyWith(passwordVisibility: isShow));
    });
    on<ConfirmPasswordEyeButtonClicked>((event, emit) async {
      bool isShow = !state.confirmPasswordVisibility;
      emit(state.copyWith(confirmPasswordVisibility: isShow));
    });
  }
}
