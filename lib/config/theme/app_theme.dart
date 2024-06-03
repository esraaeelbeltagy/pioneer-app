import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      fontFamily: 'Poppins',
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.black1,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.appBarColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15.r),
            bottomLeft: Radius.circular(15.r),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.black1,
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: AppColors.black1,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        bodySmall: TextStyle(
          color: AppColors.black1,
          fontSize: 12.sp,
          fontWeight: FontWeight.normal,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.white,
      ));
}
