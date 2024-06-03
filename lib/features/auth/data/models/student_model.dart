import 'package:pioneer_app/features/auth/data/models/base_user_model.dart';
import 'package:pioneer_app/features/auth/domain/entities/student.dart';

class StudentModel extends Student implements BaseUserModel {
  const StudentModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.university,
    required super.dateOfBirth,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      university: json['university'],
      dateOfBirth: json['dateOfBirth'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'university': university,
      'dateOfBirth': dateOfBirth,
    };
  }
}
