import 'package:pioneer_app/core/parameters/base_parameters.dart';

class SignUpParentParameters extends BaseParameters {
  final String name, nameOfSon, email, password;
  final DateTime dateOfBirth;

  const SignUpParentParameters({
    required this.name,
    required this.email,
    required this.password,
    required this.dateOfBirth,
    required this.nameOfSon,
  });

  @override
  List<Object?> get props => [
        name,
        nameOfSon,
        email,
        password,
        dateOfBirth,
      ];
}


class SignUpExistingStudentParameters extends BaseParameters {
  final String name, inTake,university, email, password;
  final DateTime dateOfBirth;

  const SignUpExistingStudentParameters( {
    required this.name,
    required this.email,
    required this.password,
    required this.dateOfBirth,
    required this.inTake,required this.university,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        dateOfBirth,
        inTake,university,
      ];
}

class SignUpNewStudentParameters extends BaseParameters {
  final String name, email, password;
  final DateTime dateOfBirth;

  const SignUpNewStudentParameters( {
    required this.name,
    required this.email,
    required this.password,
    required this.dateOfBirth,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        dateOfBirth,
      ];
}