import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/buttons/custom_elevated_button.dart';
import 'package:pioneer_app/features/auth/presentation/signup_parent/bloc/signup_parent_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/signup_parent/widgets/already_have_account_widget.dart';

class SignUpParentFooterSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController,
      sonNameController,
      emailController,
      birthDayController,
      passwordController,
      confirmController;
  const SignUpParentFooterSection({
    super.key,
    required this.nameController,
    required this.sonNameController,
    required this.emailController,
    required this.birthDayController,
    required this.passwordController,
    required this.confirmController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomElevatedButton(
          text: AppStrings.signup,
          onPressed: () => _signUp(context),
          backgroundColor: context.theme.primaryColor,
          foregroundColor: AppColors.white,
        ),
        SizedBox(
          height: 10.h,
        ),
        const AlreadyHaveAccountWidget()
      ],
    );
  }

  void _signUp(BuildContext context) {
    if (!formKey.currentState!.validate()) return;
    DateFormat format = DateFormat.yMd();
    final DateTime birthday = format.parse(birthDayController.text.trim());
    context.read<SignUpParentBloc>().add(
          SubmitParentCredentialsEvent(
            parameters: SignUpParentParameters(
              name: nameController.text,
              nameOfSon: sonNameController.text,
              dateOfBirth: birthday,
              email: emailController.text,
              password: passwordController.text,
            ),
          ),
        );
  }
}
