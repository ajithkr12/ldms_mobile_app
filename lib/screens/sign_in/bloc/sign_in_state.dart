part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    required bool passwordVisibility,
    required bool isLoading,
    required bool isLoaded,
    required bool isSubmitted,
  }) = _SignInState;

  factory SignInState.initial() {
    return SignInState(
      passwordVisibility: false,
      isLoading: false,
      isLoaded: false,
      isSubmitted: false,
    );
  }
}
