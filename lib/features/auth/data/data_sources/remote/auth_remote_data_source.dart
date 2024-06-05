import 'package:dio/dio.dart';
import 'package:pioneer_app/core/errors/exceptions.dart';
import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/features/auth/data/models/base_user_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pioneer_app/features/auth/data/models/student_model.dart';

abstract class BaseAuthRemoteDataSource {
  Future<BaseUserModel> login(LoginParameters loginParameters);
  Future<void> signUpParent(SignUpParentParameters signUpParentParameters);
  Future<void> signUpNewStudent(
      SignUpNewStudentParameters signUpNewStudentParameters);
  Future<void> signUpExistingStudent(
      SignUpExistingStudentParameters signUpExistingStudentParameters);
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
}

class AuthRemoteDataSource implements BaseAuthRemoteDataSource {
  final Dio dio;
  final Connectivity connectivity;
  AuthRemoteDataSource({required this.dio, required this.connectivity});

  Future<void> _checkInternetConnection() async {
    final ConnectivityResult connectivityResult =
        (await connectivity.checkConnectivity()).first;
    if (connectivityResult == ConnectivityResult.none) {
      throw const NetworkException(message: AppStrings.networkError);
    }
  }

  @override
  Future<BaseUserModel> login(LoginParameters loginParameters) async {
    await _checkInternetConnection();
    await Future.delayed(
      const Duration(seconds: 3),
    );
    return Future.value(
      StudentModel(
        id: 0,
        dateOfBirth: DateTime.now(),
        university: '',
        name: '',
        email: loginParameters.email,
        phone: '',
      ),
    );
  }

  @override
  Future<void> signInWithFacebook() async {
    await _checkInternetConnection();
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Future<void> signInWithGoogle() async {
    await _checkInternetConnection();
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Future<void> signUpExistingStudent(
      SignUpExistingStudentParameters signUpExistingStudentParameters) async {
    await _checkInternetConnection();
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Future<void> signUpNewStudent(
      SignUpNewStudentParameters signUpNewStudentParameters) async {
    await _checkInternetConnection();
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Future<void> signUpParent(
      SignUpParentParameters signUpParentParameters) async {
    await _checkInternetConnection();
    await Future.delayed(
      const Duration(seconds: 3),
    );
  }
}
