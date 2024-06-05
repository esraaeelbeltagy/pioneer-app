import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pioneer_app/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:pioneer_app/features/auth/data/repositories/auth_repository.dart';
import 'package:pioneer_app/features/auth/domain/repositories/base_auth_repository.dart';
import 'package:pioneer_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/sign_in_with_facebook_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/signup_existing_student_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/signup_new_student_usecase.dart';
import 'package:pioneer_app/features/auth/domain/usecases/signup_parent_usecase.dart';

final GetIt locator = GetIt.instance;

void initLocator() {
  //?init blocs
  _initBlocs();

  //?init usecases
  _initUsecases();

  //?init repositories
  _initRepositories();

  //?init remote data sources
  _initRemoteDataSources();

  //?init local data sources
  _initLocalDataSources();

  //?init external
  _initExternal();
}

//?init blocs
void _initBlocs() {}

//?init usecases
void _initUsecases() {
  //?auth
  locator.registerLazySingleton(
    () => SignInWithGoogleUseCase(
      locator(),
    ),
  );
  locator.registerLazySingleton(
    () => SignInWithFacebookUseCase(
      locator(),
    ),
  );
  locator.registerLazySingleton(
    () => SignUpParentUseCase(
      locator(),
    ),
  );
  locator.registerLazySingleton(
    () => SignUpNewStudentUseCase(
      locator(),
    ),
  );
  locator.registerLazySingleton(
    () => SignUpExistingStudentUseCase(
      locator(),
    ),
  );
  locator.registerLazySingleton(
    () => LoginUseCase(
      locator(),
    ),
  );
}

//?init repositories
void _initRepositories() {
  //?auth
  locator.registerLazySingleton<BaseAuthRepository>(
    () => AuthRepository(
      remoteDataSource: locator(),
    ),
  );
}

//?init remote data sources
void _initRemoteDataSources() {
  //?auth
  locator.registerLazySingleton<BaseAuthRemoteDataSource>(
    () => AuthRemoteDataSource(
      dio: locator(),
      connectivity: locator(),
    ),
  );
}

//?init local data sources
void _initLocalDataSources() {}

//?init external
void _initExternal() {
  //?init connectivity
  locator.registerLazySingleton(
    () => Connectivity(),
  );

  //?init dio
  locator.registerLazySingleton(
    () => Dio(),
  );
}
