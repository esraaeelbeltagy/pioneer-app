import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';
import 'package:pioneer_app/core/widgets/buttons/custom_elevated_button.dart';

class WelcomeButtonsSection extends StatelessWidget {
  const WelcomeButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomElevatedButton(
          text: AppStrings.login,
          onPressed: () {},
          backgroundColor: context.theme.primaryColor,
          foregroundColor: AppColors.white,
        ),
        SizedBox(height: 10.h),
        CustomElevatedButton(
          text: AppStrings.signup,
          onPressed: () {},
          backgroundColor: Colors.grey,
          foregroundColor: AppColors.white,
        ),
      ],
    );
  }
}
