import 'package:pioneer_app/features/auth/domain/entities/base_user.dart';

class Student extends BaseUser {
  final int id;
  final String name, email, phone, university;
  final DateTime dateOfBirth;

  const Student({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.university,
    required this.dateOfBirth,
  });
  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phone,
        university,
        dateOfBirth,
      ];
}
