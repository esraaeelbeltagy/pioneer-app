import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pioneer_app/core/errors/failures.dart';

abstract class BaseUseCase extends Equatable{
  const BaseUseCase();
}

abstract class UseCaseWithParameters<Type,Params> extends BaseUseCase{
  const UseCaseWithParameters();
  Future<Either<Failure,Type>> call(Params params);
  @override
  List<Object?> get props => [];

}

abstract class UseCaseWithNoParameters<Type> extends BaseUseCase{

const UseCaseWithNoParameters();
  Future<Either<Failure,Type>> call();
  @override
  List<Object?> get props => [];

}