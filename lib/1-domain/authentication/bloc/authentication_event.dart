part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

class UserLoggedIn extends AuthenticationEvent {}

class UserLoggedOut extends AuthenticationEvent {}
