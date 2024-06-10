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
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15.r),
            bottomLeft: Radius.circular(15.r),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(
          AppColors.secondaryColor,
        ),
        checkColor: MaterialStateProperty.all(AppColors.white),
        side: const BorderSide(color: AppColors.secondaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
        ),
      ),
      inputDecorationTheme:  InputDecorationTheme(
        prefixIconColor: AppColors.black1,
        suffixIconColor: AppColors.black1,
        hintStyle: TextStyle(fontSize: 12.sp ),
        // suffixStyle: TextStyle(fontSize: 8.sp),
        // prefixStyle: TextStyle(fontSize: 8.sp),
        labelStyle: TextStyle(fontSize: 12.sp),
        
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondaryColor),
        ),
        errorStyle:  TextStyle(color: AppColors.error , fontSize: 10.sp),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.error ),
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
