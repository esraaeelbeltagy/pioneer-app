import 'package:pioneer_app/features/auth/data/models/base_user_model.dart';
import 'package:pioneer_app/features/auth/domain/entities/parent.dart';

class ParentModel extends Parent implements BaseUserModel {
  const ParentModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
  });

  factory ParentModel.fromJson(Map<String, dynamic> json) {
    return ParentModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
    };
  }
}
