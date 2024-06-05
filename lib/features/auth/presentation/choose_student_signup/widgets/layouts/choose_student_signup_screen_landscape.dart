import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/widgets/layout/styled_scaffold.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/widgets/sections/choose_student_signup_button_section.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/widgets/sections/choose_student_signup_logo_section.dart';

class ChooseStudentSignUpScreenLandscape extends StatelessWidget {
  const ChooseStudentSignUpScreenLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: ChooseStudentSignUpLogoSection(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12).r,
                child: const Center(
                  child: ChooseStudentSignUpButtonsSection(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
