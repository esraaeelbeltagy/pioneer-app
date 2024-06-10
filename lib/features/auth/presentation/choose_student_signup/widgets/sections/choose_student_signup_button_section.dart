import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/buttons/custom_elevated_button.dart';

class ChooseStudentSignUpButtonsSection extends StatelessWidget {
  const ChooseStudentSignUpButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomElevatedButton(
          text: AppStrings.newStudent,
          onPressed: () => _goToNewStudent(context),
          backgroundColor: context.theme.primaryColor,
          foregroundColor: AppColors.white,
        ),
        SizedBox(height: 10.h),
        CustomElevatedButton(
          text: AppStrings.existingStudent,
          onPressed: () => _goToExistingStudent(context),
          backgroundColor: AppColors.secondaryColor,
          foregroundColor: AppColors.white,
        ),
      ],
    );
  }

  void _goToNewStudent(BuildContext context) {
    context.pushReplacementNamed(Routes.signUpNewStudent);
  }

  void _goToExistingStudent(BuildContext context) {
    context.pushReplacementNamed(Routes.signUpExistingStudent);
  }
}
