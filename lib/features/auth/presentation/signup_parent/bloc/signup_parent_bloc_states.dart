part of 'signup_parent_bloc.dart';

sealed class SignUpParentState extends Equatable {
  const SignUpParentState();
}

class SignUpParentInitialState extends SignUpParentState {
  @override
  List<Object?> get props => [];
}

class SignUpParentLoadingState extends SignUpParentState {
  @override
  List<Object?> get props => [];
}

class SignUpParentSuccessState extends SignUpParentState {
  @override
  List<Object?> get props => [];
}

class SignUpParentFailureState extends SignUpParentState {
  final String message;

  const SignUpParentFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
