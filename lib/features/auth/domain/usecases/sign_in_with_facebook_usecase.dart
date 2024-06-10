import 'package:dartz/dartz.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/usecases/base_usecase.dart';
import 'package:pioneer_app/features/auth/domain/entities/base_user.dart';
import 'package:pioneer_app/features/auth/domain/repositories/base_auth_repository.dart';

class SignInWithFacebookUseCase extends UseCaseWithNoParameters<BaseUser> {
  final BaseAuthRepository baseAuthRepository;
  const SignInWithFacebookUseCase(this.baseAuthRepository);

  @override
  Future<Either<Failure, BaseUser>> call() {
    return baseAuthRepository.signInWithFacebook();
  }
}
