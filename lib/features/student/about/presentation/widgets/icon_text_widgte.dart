import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class IconTextWidget extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;
  const IconTextWidget({super.key,required this.imageAsset,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 6.h),
      child: Column(
        children: [
          Image.asset(
            imageAsset,
            fit: BoxFit.contain,
            height: 43.h,
            width: 43.w,
          ),
          Text(
            title,
            style: theme.bodyLarge,
          ),
          SizedBox(height: 3.h,),
          Text(
            description,
            style: theme.displaySmall
                ?.copyWith(fontWeight: FontWeight.w400,color: AppColors.grey),
          )
        ],
      ),
    );
  }
}
