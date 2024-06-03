import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class WelcomeBodySection extends StatelessWidget {
  const WelcomeBodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppStrings.welcomeBody1,
          style: _bodyStyle(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),
        Text(
          AppStrings.welcomeBody2,
          style: _bodyStyle(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),
        Text(
          AppStrings.welcomeBody3,
          style: _bodyStyle(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  TextStyle _bodyStyle() {
    return TextStyle(
      fontSize: 8.sp,
      fontWeight: FontWeight.w500,
    );
  }
}
