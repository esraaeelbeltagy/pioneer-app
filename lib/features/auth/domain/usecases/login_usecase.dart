import 'package:dartz/dartz.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/usecases/base_usecase.dart';
import 'package:pioneer_app/features/auth/domain/entities/base_user.dart';
import 'package:pioneer_app/features/auth/domain/repositories/base_auth_repository.dart';

class LoginUseCase extends UseCaseWithParameters<BaseUser,LoginParameters>{
  final BaseAuthRepository baseAuthRepository;
  const LoginUseCase(this.baseAuthRepository);
  @override
  Future<Either<Failure, BaseUser>> call(LoginParameters params) {
    return baseAuthRepository.login(params);
  }

}