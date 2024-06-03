import 'package:dartz/dartz.dart';
import 'package:pioneer_app/core/errors/failures.dart';
import 'package:pioneer_app/core/usecases/base_usecase.dart';
import 'package:pioneer_app/features/auth/domain/repositories/base_auth_repository.dart';

class SignInWithGoogleUseCase extends UseCaseWithNoParameters<Unit>{
  final BaseAuthRepository baseAuthRepository;
  const SignInWithGoogleUseCase(this.baseAuthRepository);
  
  @override
  Future<Either<Failure, Unit>> call() {
    return baseAuthRepository.signInWithGoogle();
  }

}