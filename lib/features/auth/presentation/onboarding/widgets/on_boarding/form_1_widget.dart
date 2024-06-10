import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';

class Form1Widget extends StatelessWidget {
  const Form1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 15.h),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 39.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  backgroundColor: AppColors.white,
                  side: const BorderSide(color: AppColors.secondaryColor),
                ),
                child: Text(
                  "Yes",
                  style: TextStyle(
                    color: AppColors.black1,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 39.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  backgroundColor: AppColors.secondaryColor,
                ),
                child:  Text(
                  "Not yet",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
