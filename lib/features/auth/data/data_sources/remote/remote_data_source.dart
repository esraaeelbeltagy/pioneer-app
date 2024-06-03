import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/features/auth/data/models/base_user_model.dart';

abstract class BaseRemoteDataSource {
    Future<BaseUserModel> login(LoginParameters loginParameters);
  Future<void> signUpParent(SignUpParentParameters signUpParentParameters);
  Future<void> signUpNewStudent(SignUpNewStudentParameters signUpNewStudentParameters);
  Future<void> signUpExistingStudent(SignUpExistingStudentParameters signUpExistingStudentParameters);
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
}