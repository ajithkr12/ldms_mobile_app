import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ldms_mobile_app/screens/add_devices/models/device_data_model.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  int postPage = 0;
  SignInBloc() : super(SignInState.initial()) {
    on<PasswordEyeButtonClicked>((event, emit) async {
      bool isShow = !state.passwordVisibility;
      emit(state.copyWith(passwordVisibility: isShow));
    });
  }
}
