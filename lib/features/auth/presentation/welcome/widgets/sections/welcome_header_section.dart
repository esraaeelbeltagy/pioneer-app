import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_strings.dart';

class WelcomeHeaderSection extends StatelessWidget {
  const WelcomeHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.welcomeTitle,
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w800,
        height: 1.h,
      ),
      textAlign: TextAlign.center,
    );
  }
}
