import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class Form2Widget extends StatelessWidget {
  const Form2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 2.w, // gap between adjacent chips
      runSpacing: 8.0.h, // gap between lines
      children: <Widget>[
        container2("83500MYR"),
        container2("55700MYR to 83500MYR"),
        container2("27799MYR to 55700MYR"),
        container2("13899MYR to 27799MYR"),
        container2("OMYR"),
      ],
    );
  }

  SizedBox container2(
    String text,
  ) {
    return SizedBox(
      width: 100.w,
      height: 40.h,
      child: Container(
        //padding: EdgeInsets.all(5.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            border: Border.all(color: AppColors.seconeryColor)),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black1,
              fontSize: 9.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
