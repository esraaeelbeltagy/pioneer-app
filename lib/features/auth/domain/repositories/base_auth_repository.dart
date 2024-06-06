import 'package:dartz/dartz.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/features/auth/domain/entities/base_user.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, BaseUser>> login(LoginParameters loginParameters);
  Future<Either<Failure, Unit>> signUpParent(
      SignUpParentParameters signUpParentParameters);
  Future<Either<Failure, Unit>> signUpNewStudent(
      SignUpNewStudentParameters signUpNewStudentParameters);
  Future<Either<Failure, Unit>> signUpExistingStudent(
      SignUpExistingStudentParameters signUpExistingStudentParameters);
  Future<Either<Failure, BaseUser>> signInWithGoogle();
  Future<Either<Failure, BaseUser>> signInWithFacebook();
}
