part of 'signup_new_student_bloc.dart';

abstract class SignUpNewStudentEvent extends Equatable {
  const SignUpNewStudentEvent();
}

class SubmitNewStudentCredentialsEvent extends SignUpNewStudentEvent {
  final SignUpNewStudentParameters parameters;

  const SubmitNewStudentCredentialsEvent({required this.parameters});
  @override
  List<Object?> get props => [parameters];
}
