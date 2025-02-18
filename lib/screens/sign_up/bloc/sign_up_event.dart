part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;

  factory SignUpEvent.setLoading() = SetLoading;
  factory SignUpEvent.confirmPasswordEyeButtonClicked() =
      ConfirmPasswordEyeButtonClicked;
  factory SignUpEvent.passwordEyeButtonClicked() = PasswordEyeButtonClicked;
}
