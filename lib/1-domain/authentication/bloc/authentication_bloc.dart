import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<UserLoggedIn>((event, emit) {
      emit(AuthenticationSuccess()); // Emits a state change
    });

    on<UserLoggedOut>((event, emit) {
      emit(AuthenticationFailure());
    });
  }
}
