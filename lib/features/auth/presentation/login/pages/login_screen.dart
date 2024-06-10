import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/extensions/pop_message_extension.dart';
import 'package:pioneer_app/core/widgets/layout/orientation_widget.dart';
import 'package:pioneer_app/features/auth/presentation/login/bloc/login_bloc.dart';
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
      _rememberMe = ValueNotifier<bool>(false);

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
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          context.showLoading();
        }

        if (state is LoginSuccessState) {
          context.popLoading();
          context.pushReplacementNamed(Routes.onBoarding);
        }

        if (state is LoginFailureState) {
          context.showErrorMessage(state.message);
        }
      },
      child: OrientationWidget(
        portrait: LoginScreenPortrait(
          emailController: _emailController,
          passwordController: _passwordController,
          passwordVisibility: _passwordVisibility,
          rememberMe: _rememberMe,
        ),
        landscape: LoginScreenLandscape(
          emailController: _emailController,
          passwordController: _passwordController,
          passwordVisibility: _passwordVisibility,
          rememberMe: _rememberMe,
        ),
      ),
    );
  }
}
