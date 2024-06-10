import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';

class Form3Widget extends StatelessWidget {
  const Form3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      alignment: WrapAlignment.center,
     crossAxisAlignment:WrapCrossAlignment.center ,

      spacing: 40.w, // gap between adjacent chips
      runSpacing: 10.0.h, // gap between lines
      children: <Widget>[
        container3("Next year" , 100),
        container3("Don't know" , 100),
        container3("As soon as possible" , 150),
     
      ],
    );
  }
}





  SizedBox container3(
    String text,
    int width,
  ) {
    return SizedBox(
     width: width.w,
      height: 40.h,
      child: Container(
       
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            border: Border.all(color: AppColors.secondaryColor)),
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

