import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/parameters/login_parameters.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/buttons/custom_elevated_button.dart';
import 'package:pioneer_app/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/do_not_have_account_widget.dart';

class LoginFooterSection extends StatelessWidget {
  final TextEditingController emailController, passwordController;
  const LoginFooterSection({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomElevatedButton(
          text: AppStrings.login.toUpperCase(),
          onPressed: () => _login(context),
          backgroundColor: context.theme.primaryColor,
          foregroundColor: AppColors.white,
        ),
        SizedBox(
          height: 10.h,
        ),
        const DoNotHaveAccountWidget()
      ],
    );
  }

  void _login(BuildContext context) {
    context.read<LoginBloc>().add(
          LoginSubmitEvent(
            parameters: LoginParameters(
              email: emailController.text,
              password: passwordController.text,
            ),
          ),
        );
  }
}
