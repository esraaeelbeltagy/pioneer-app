part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();
}

class LoginInitialState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginLoadingState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginSuccessState extends LoginState {
  final BaseUser user;

  const LoginSuccessState({required this.user});
  @override
  List<Object?> get props => [user];
}

class LoginFailureState extends LoginState {
  final String message;

  const LoginFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
