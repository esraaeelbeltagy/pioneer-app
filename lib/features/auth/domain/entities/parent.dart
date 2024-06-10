import 'package:pioneer_app/features/auth/domain/entities/base_user.dart';

class Parent extends BaseUser {
  final int id;
  final String name, email, phone;

  const Parent({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });
  @override
  List<Object?> get props => [
        id,
        name,
        email,
        phone,
      ];
}
