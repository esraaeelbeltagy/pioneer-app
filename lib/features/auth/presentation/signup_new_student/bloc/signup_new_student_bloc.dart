import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/features/auth/domain/usecases/signup_new_student_usecase.dart';

part 'signup_new_student_bloc_events.dart';
part 'signup_new_student_bloc_states.dart';

class SignUpNewStudentBloc
    extends Bloc<SignUpNewStudentEvent, SignUpNewStudentState> {
  final SignUpNewStudentUseCase signUpNewStudentUseCase;
  SignUpNewStudentBloc(this.signUpNewStudentUseCase)
      : super(SignUpNewStudentInitialState()) {
    on<SubmitNewStudentCredentialsEvent>(_submitNewStudentCredentials);
  }

  FutureOr<void> _submitNewStudentCredentials(
    SubmitNewStudentCredentialsEvent event,
    Emitter<SignUpNewStudentState> emit,
  ) async {
    emit(SignUpNewStudentLoadingState());
    final Either<Failure, Unit> result =
        await signUpNewStudentUseCase(event.parameters);
    result.fold(
      (failure) => emit(
        SignUpNewStudentFailureState(message: failure.message),
      ),
      (user) => emit(
        SignUpNewStudentSuccessState(),
      ),
    );
    emit(SignUpNewStudentInitialState());
  }
}
