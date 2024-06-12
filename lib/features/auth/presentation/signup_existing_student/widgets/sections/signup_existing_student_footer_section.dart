import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/parameters/signup_parameters.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/buttons/custom_elevated_button.dart';
import 'package:pioneer_app/features/auth/presentation/signup_existing_student/bloc/signup_existing_student_bloc.dart';
import 'package:pioneer_app/features/auth/presentation/signup_existing_student/widgets/already_have_account_widget.dart';

class SignUpExistingStudentFooterSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ValueNotifier<String?> inTake, university;
  final TextEditingController nameController,
      emailController,
      birthDayController,
      passwordController,
      confirmController;
  const SignUpExistingStudentFooterSection({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.birthDayController,
    required this.passwordController,
    required this.confirmController,
    required this.formKey,
    required this.inTake,
    required this.university,
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
        const AlreadyHaveAccountWidget(),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }

  void _signUp(BuildContext context) {
    if (!formKey.currentState!.validate()) return;
    DateFormat format = DateFormat.yMd();
    final DateTime birthday = format.parse(birthDayController.text.trim());
    context.read<SignUpExistingStudentBloc>().add(
          SubmitExistingStudentCredentialsEvent(
            parameters: SignUpExistingStudentParameters(
              inTake: inTake.value!,
              university: university.value!,
              name: nameController.text,
              dateOfBirth: birthday,
              email: emailController.text,
              password: passwordController.text,
            ),
          ),
        );
  }
}
