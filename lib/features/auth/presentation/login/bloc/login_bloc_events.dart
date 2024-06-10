part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginSubmitEvent extends LoginEvent {
  final LoginParameters parameters;

  const LoginSubmitEvent({required this.parameters});

  @override
  List<Object?> get props => [parameters];
}

class GoogleSignInEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

class FacebookSignInEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
