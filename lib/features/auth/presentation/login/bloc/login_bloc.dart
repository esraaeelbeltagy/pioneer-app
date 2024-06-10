import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/features/auth/domain/entities/base_user.dart';
import 'package:pioneer_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/sign_in_with_facebook_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/sign_in_with_google_usecase.dart';

part 'login_bloc_events.dart';
part 'login_bloc_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final SignInWithFacebookUseCase signInWithFacebookUseCase;
  LoginBloc(
    this.loginUseCase,
    this.signInWithGoogleUseCase,
    this.signInWithFacebookUseCase,
  ) : super(LoginInitialState()) {
    on<LoginSubmitEvent>(_loginSubmit);
    on<GoogleSignInEvent>(_googleSignIn);
    on<FacebookSignInEvent>(_facebookSignIn);
  }

  FutureOr<void> _loginSubmit(
    LoginSubmitEvent event,
    Emitter<LoginState> emit,
  ) async {
    final String email = event.parameters.email.trim(),
        password = event.parameters.password.trim();
    if (email.isEmpty || password.isEmpty) {
      emit(
        const LoginFailureState(
          message: AppStrings.authCredentialsError,
        ),
      );
      emit(LoginInitialState());
      return;
    }
    emit(LoginLoadingState());
    final Either<Failure, BaseUser> result =
        await loginUseCase(event.parameters);
    result.fold(
      (failure) => emit(
        LoginFailureState(message: failure.message),
      ),
      (user) => emit(
        LoginSuccessState(user: user),
      ),
    );
    emit(LoginInitialState());
  }

  FutureOr<void> _googleSignIn(
    GoogleSignInEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoadingState());
    final Either<Failure, BaseUser> result = await signInWithGoogleUseCase();
    result.fold(
      (failure) => emit(
        LoginFailureState(message: failure.message),
      ),
      (user) => emit(
        LoginSuccessState(user: user),
      ),
    );
    emit(LoginInitialState());
  }

  FutureOr<void> _facebookSignIn(
    FacebookSignInEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoadingState());
    final Either<Failure, BaseUser> result = await signInWithFacebookUseCase();
    result.fold(
      (failure) => emit(
        LoginFailureState(message: failure.message),
      ),
      (user) => emit(
        LoginSuccessState(user: user),
      ),
    );
    emit(LoginInitialState());
  }
}
