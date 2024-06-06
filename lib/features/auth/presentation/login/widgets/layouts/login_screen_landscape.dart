import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/headers/transparent_app_bar.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/core/widgets/visuals/app_bar_logo.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/auth_divider_widget.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/sections/auth_buttons_section.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/sections/login_fields_section.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/sections/login_footer_section.dart';
import 'package:pioneer_app/features/auth/presentation/login/widgets/sections/login_header_section.dart';

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
    return StyledScaffold(
      appBar: TransparentAppBar(
        title: const AppBarLogo(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 8.0.w),
                child: const LoginHeaderSection(),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12).r,
                children: [
                  LoginFieldsSection(
                    emailController: emailController,
                    passwordController: passwordController,
                    passwordVisibility: passwordVisibility,
                    rememberMe: rememberMe,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const AuthDividerWidget(),
                  SizedBox(
                    height: 5.h,
                  ),
                  const AuthButtonsSection(),
                  SizedBox(
                    height: 20.h,
                  ),
                  LoginFooterSection(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
