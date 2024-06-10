import 'package:pioneer_app/core/parameters/base_parameters.dart';

class LoginParameters extends BaseParameters{
  final String email,password;

  const LoginParameters({required this.email, required this.password,});
  
  @override
  List<Object?> get props => [ email, password,];
}