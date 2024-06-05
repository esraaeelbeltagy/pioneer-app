import 'package:flutter/material.dart';

class LoginScreenLandscape extends StatelessWidget {
  final TextEditingController emailController, passwordController;
  final ValueNotifier<bool> passwordVisibility, rememberMe;
  const LoginScreenLandscape({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.passwordVisibility,
    required this.rememberMe,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
