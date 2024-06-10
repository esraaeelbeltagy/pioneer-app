import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/features/auth/domain/usecases/signup_parent_usecase.dart';

part 'signup_parent_bloc_events.dart';
part 'signup_parent_bloc_states.dart';

class SignUpParentBloc extends Bloc<SignUpParentEvent, SignUpParentState> {
  final SignUpParentUseCase signUpParentUseCase;
  SignUpParentBloc(this.signUpParentUseCase)
      : super(SignUpParentInitialState()) {
    on<SubmitParentCredentialsEvent>(_submitParentCredentials);
  }

  FutureOr<void> _submitParentCredentials(
    SubmitParentCredentialsEvent event,
    Emitter<SignUpParentState> emit,
  ) async {
    emit(SignUpParentLoadingState());
    final Either<Failure, Unit> result =
        await signUpParentUseCase(event.parameters);
    result.fold(
      (failure) => emit(
        SignUpParentFailureState(message: failure.message),
      ),
      (user) => emit(
        SignUpParentSuccessState(),
      ),
    );
    emit(SignUpParentInitialState());
  }
}
