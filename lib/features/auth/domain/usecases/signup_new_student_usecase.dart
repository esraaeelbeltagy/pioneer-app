import 'package:dartz/dartz.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/core/usecases/base_usecase.dart';
import 'package:pioneer_app/features/auth/domain/repositories/base_auth_repository.dart';

class SignUpNewStudentUseCase extends UseCaseWithParameters<Unit,SignUpNewStudentParameters>{
  final BaseAuthRepository baseAuthRepository;
  const SignUpNewStudentUseCase(this.baseAuthRepository);
  
  @override
  Future<Either<Failure, Unit>> call(SignUpNewStudentParameters params) {
    return baseAuthRepository.signUpNewStudent(params);
  }

}