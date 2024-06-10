import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pioneer_app/config/routes/app_routes.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/buttons/custom_elevated_button.dart';

class ChooseRoleButtonsSection extends StatelessWidget {
  const ChooseRoleButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomElevatedButton(
          text: AppStrings.parent,
          onPressed: () => _goToParent(context),
          backgroundColor: context.theme.primaryColor,
          foregroundColor: AppColors.white,
        ),
        SizedBox(height: 10.h),
        CustomElevatedButton(
          text: AppStrings.student,
          onPressed: () => _goToStudent(context),
          backgroundColor: AppColors.secondaryColor,
          foregroundColor: AppColors.white,
        ),
      ],
    );
  }

  void _goToParent(BuildContext context) {
    context.pushReplacementNamed(Routes.signUpParent);
  }

  void _goToStudent(BuildContext context) {
    context.pushReplacementNamed(Routes.chooseStudent);
  }
}
