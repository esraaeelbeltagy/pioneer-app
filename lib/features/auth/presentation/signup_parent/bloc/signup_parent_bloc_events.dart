part of 'signup_parent_bloc.dart';

abstract class SignUpParentEvent extends Equatable {
  const SignUpParentEvent();
}

class SubmitParentCredentialsEvent extends SignUpParentEvent {
  final SignUpParentParameters parameters;

  const SubmitParentCredentialsEvent({required this.parameters});
  @override
  List<Object?> get props => [parameters];
}
