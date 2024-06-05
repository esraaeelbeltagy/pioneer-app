import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/text_fields/custom_underline_text_field.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/remember_me_and_forgot_password_widget.dart';

class LoginFieldsSection extends StatelessWidget {
  final TextEditingController emailController, passwordController;
  final ValueNotifier<bool> passwordVisibility, rememberMe;
  const LoginFieldsSection({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.passwordVisibility,
    required this.rememberMe,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.login,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        CustomUnderlineTextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          labelText: AppStrings.email,
          prefixIcon: const Icon(
            Icons.email,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        ValueListenableBuilder(
          valueListenable: passwordVisibility,
          builder: (context, value, _) {
            return CustomUnderlineTextField(
              controller: passwordController,
              obscureText: !value,
              labelText: AppStrings.password,
              prefixIcon: const Icon(
                Icons.lock,
              ),
              suffixIcon: IconButton(
                onPressed: _toggleVisibility,
                icon: Icon(
                  !value ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: 10.h,
        ),
        RememberMeAndForgotPasswordWidget(
          rememberMe: rememberMe,
        ),
      ],
    );
  }

  void _toggleVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }
}
