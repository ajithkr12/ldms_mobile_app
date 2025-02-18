part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;

  factory SignInEvent.setLoading() = SetLoading;
  factory SignInEvent.passwordEyeButtonClicked() = PasswordEyeButtonClicked;
}
