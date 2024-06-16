import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class AboutWidget extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;
  const AboutWidget({super.key, required this.imageAsset,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.backGroundGrey,
        borderRadius: BorderRadius.circular(38),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      width: 230.w,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38)),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: 15.w, vertical: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.bodyLarge,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    description,
                    style: theme.bodySmall,
                  ),
                  const Spacer(),
                  Container(
                    width: 111.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.primaryColor),
                    child: Center(
                        child: Text("Watch more",
                            style: theme.bodySmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
