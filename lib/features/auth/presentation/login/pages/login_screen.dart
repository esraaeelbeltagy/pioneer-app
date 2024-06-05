import 'package:flutter/material.dart';
import 'package:pioneer_app/core/widgets/layout/orientation_widget.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/layouts/login_screen_landscape.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/layouts/login_screen_portrait.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController, _passwordController;
  final ValueNotifier<bool> _passwordVisibility = ValueNotifier<bool>(false),
      rememberMe = ValueNotifier<bool>(false);

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationWidget(
      portrait: LoginScreenPortrait(
        emailController: _emailController,
        passwordController: _passwordController,
        passwordVisibility: _passwordVisibility,
        rememberMe: rememberMe,
      ),
      landscape: LoginScreenLandscape(
        emailController: _emailController,
        passwordController: _passwordController,
        passwordVisibility: _passwordVisibility,
        rememberMe: rememberMe,
      ),
    );
  }
}
