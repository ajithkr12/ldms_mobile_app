part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required bool passwordVisibility,
    required bool confirmPasswordVisibility,
    required bool isLoading,
    required bool isLoaded,
    required bool isSubmitted,
  }) = _SignUpState;

  factory SignUpState.initial() {
    return SignUpState(
      passwordVisibility: false,
      confirmPasswordVisibility: false,
      isLoading: false,
      isLoaded: false,
      isSubmitted: false,
    );
  }
}
