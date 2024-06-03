import 'package:dartz/dartz.dart';
import 'package:pioneer_app/core/errors/exceptions.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/features/auth/data/data_sources/remote/remote_data_source.dart';
import 'package:pioneer_app/features/auth/data/models/base_user_model.dart';
import 'package:pioneer_app/features/auth/domain/repositories/base_auth_repository.dart';

class AuthRepository implements BaseAuthRepository{
  final BaseRemoteDataSource remoteDataSource;

  const AuthRepository({required this.remoteDataSource});
  @override
  Future<Either<Failure, BaseUserModel>> login(LoginParameters loginParameters) async {
    try {
      final BaseUserModel user = await remoteDataSource.login(loginParameters);
      return Right(user);
    }
    on AuthException catch(e) {
      return Left(AuthFailure(message: e.message));
    }
    on NetworkException catch(e) {
      return Left(NetworkFailure(message: e.message));
    }
    on ServerException catch(e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> signInWithFacebook() async {
    try {
      await remoteDataSource.signInWithFacebook();
      return const Right(unit);
    }
    on AuthException catch(e) {
      return Left(AuthFailure(message: e.message));
    }
    on NetworkException catch(e) {
      return Left(NetworkFailure(message: e.message));
    }
    on ServerException catch(e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> signInWithGoogle() async {
    try {
      await remoteDataSource.signInWithGoogle();
      return const Right(unit);
    }
    on AuthException catch(e) {
      return Left(AuthFailure(message: e.message));
    }
    on NetworkException catch(e) {
      return Left(NetworkFailure(message: e.message));
    }
    on ServerException catch(e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> signUpExistingStudent(SignUpExistingStudentParameters signUpExistingStudentParameters) async{
    try {
      await remoteDataSource.signUpExistingStudent(signUpExistingStudentParameters);
      return const Right(unit);
    }
    on AuthException catch(e) {
      return Left(AuthFailure(message: e.message));
    }
    on NetworkException catch(e) {
      return Left(NetworkFailure(message: e.message));
    }
    on ServerException catch(e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> signUpNewStudent(SignUpNewStudentParameters signUpNewStudentParameters) async{
    try {
      await remoteDataSource.signUpNewStudent(signUpNewStudentParameters);
      return const Right(unit);
    }
    on AuthException catch(e) {
      return Left(AuthFailure(message: e.message));
    }
    on NetworkException catch(e) {
      return Left(NetworkFailure(message: e.message));
    }
    on ServerException catch(e) {
      return Left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> signUpParent(SignUpParentParameters signUpParentParameters) async {
    try {
      await remoteDataSource.signUpParent(signUpParentParameters);
      return const Right(unit);
    }
    on AuthException catch(e) {
      return Left(AuthFailure(message: e.message));
    }
    on NetworkException catch(e) {
      return Left(NetworkFailure(message: e.message));
    }
    on ServerException catch(e) {
      return Left(ServerFailure(message: e.message));
    }
  }

}