part of 'signup_new_student_bloc.dart';

sealed class SignUpNewStudentState extends Equatable {
  const SignUpNewStudentState();
}

class SignUpNewStudentInitialState extends SignUpNewStudentState {
  @override
  List<Object?> get props => [];
}

class SignUpNewStudentLoadingState extends SignUpNewStudentState {
  @override
  List<Object?> get props => [];
}

class SignUpNewStudentSuccessState extends SignUpNewStudentState {
  @override
  List<Object?> get props => [];
}

class SignUpNewStudentFailureState extends SignUpNewStudentState {
  final String message;

  const SignUpNewStudentFailureState({required this.message});
  @override
  List<Object?> get props => [message];
}
