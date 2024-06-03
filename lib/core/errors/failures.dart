import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  const Failure();
}
class AuthFailure extends Failure {
  final String message;
  const AuthFailure({required this.message});
  
  @override
  List<Object?> get props => [message];
}
class NetworkFailure extends Failure {
  final String message;
  const NetworkFailure({required this.message});
  
  @override
  List<Object?> get props => [message];
}
class ServerFailure extends Failure {
  final String message;
  const ServerFailure({required this.message});
  
  @override
  List<Object?> get props => [message];
}