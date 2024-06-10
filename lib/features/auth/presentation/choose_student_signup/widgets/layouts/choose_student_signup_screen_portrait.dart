import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/widgets/sections/choose_student_signup_button_section.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/widgets/sections/choose_student_signup_logo_section.dart';

class ChooseStudentSignUpScreenPortrait extends StatelessWidget {
  const ChooseStudentSignUpScreenPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ChooseStudentSignUpLogoSection(),
              SizedBox(height: 60.h),
              const ChooseStudentSignUpButtonsSection(),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
