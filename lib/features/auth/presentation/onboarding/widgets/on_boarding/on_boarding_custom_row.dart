import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../config/routes/app_routes.dart';
import '../../../../../../core/utils/app_colors.dart';
import 'model/on_boarding_content.dart';
import 'page_indecator.dart';

class OnBoardingCustomRow extends StatelessWidget {
  // ignore: use_super_parameters
  const OnBoardingCustomRow({
    Key? key,
    required this.index,
    required this.pageController,
  }) : super(key: key);
  final int index;
  final PageController pageController ;

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 30.h),
      child: Row(
        children: [
          Expanded(
            child: PageIndicator(
              
              currentValue: index,
            ),
          ),
          Container(
            width: 45.w,
            height: 45.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primaryColor),
            child: IconButton(
              onPressed: () {
                if(index == contentList.length -1 ){
                  context.pushReplacementNamed(Routes.home);
                }else {
                  pageController.animateToPage(index+1, duration: const Duration(milliseconds:700), curve:Curves.easeInOut );
                }

              },
              icon: Icon(
                Icons.arrow_forward,
                size: 20.sp,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
