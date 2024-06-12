part of 'signup_existing_student_bloc.dart';

abstract class SignUpExistingStudentEvent extends Equatable {
  const SignUpExistingStudentEvent();
}

class SubmitExistingStudentCredentialsEvent extends SignUpExistingStudentEvent {
  final SignUpExistingStudentParameters parameters;

  const SubmitExistingStudentCredentialsEvent({required this.parameters});
  @override
  List<Object?> get props => [parameters];
}
