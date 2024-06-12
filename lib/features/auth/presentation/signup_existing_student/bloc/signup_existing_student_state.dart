part of 'signup_existing_student_bloc.dart';

sealed class SignUpExistingStudentState extends Equatable {
  const SignUpExistingStudentState();
}

class SignUpExistingStudentInitialState extends SignUpExistingStudentState {
  @override
  List<Object?> get props => [];
}

class SignUpExistingStudentLoadingState extends SignUpExistingStudentState {
  @override
  List<Object?> get props => [];
}

class SignUpExistingStudentSuccessState extends SignUpExistingStudentState {
  @override
  List<Object?> get props => [];
}

class SignUpExistingStudentFailureState extends SignUpExistingStudentState {
  final String message;

  const SignUpExistingStudentFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
