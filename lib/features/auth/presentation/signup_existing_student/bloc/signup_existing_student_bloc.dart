import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/features/auth/domain/usecases/signup_existing_student_usecase.dart';

part 'signup_existing_student_event.dart';
part 'signup_existing_student_state.dart';

class SignUpExistingStudentBloc
    extends Bloc<SignUpExistingStudentEvent, SignUpExistingStudentState> {
  final SignUpExistingStudentUseCase signUpExistingStudentUseCase;
  SignUpExistingStudentBloc(this.signUpExistingStudentUseCase)
      : super(SignUpExistingStudentInitialState()) {
    on<SubmitExistingStudentCredentialsEvent>(
        _submitExistingStudentCredentials);
  }

  FutureOr<void> _submitExistingStudentCredentials(
      SubmitExistingStudentCredentialsEvent event,
      Emitter<SignUpExistingStudentState> emit) async {
    emit(SignUpExistingStudentLoadingState());
    final Either<Failure, Unit> result =
        await signUpExistingStudentUseCase(event.parameters);
    result.fold(
      (failure) => emit(
        SignUpExistingStudentFailureState(message: failure.message),
      ),
      (user) => emit(
        SignUpExistingStudentSuccessState(),
      ),
    );
    emit(SignUpExistingStudentInitialState());
  }
}
