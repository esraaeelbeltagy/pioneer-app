import 'package:flutter/cupertino.dart';
import 'package:pioneer_app/core/widgets/layout/orientation_widget.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/widgets/layouts/choose_student_signup_screen_landscape.dart';
import 'package:pioneer_app/features/auth/presentation/choose_student_signup/widgets/layouts/choose_student_signup_screen_portrait.dart';

class ChooseStudentSignUpScreen extends StatelessWidget {
  const ChooseStudentSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrientationWidget(
      portrait: ChooseStudentSignUpScreenPortrait(),
      landscape: ChooseStudentSignUpScreenLandscape(),
    );
  }
}
