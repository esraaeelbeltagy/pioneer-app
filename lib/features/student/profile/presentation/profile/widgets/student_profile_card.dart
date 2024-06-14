import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/images.dart';

class StudentProfileCard extends StatelessWidget {
  const StudentProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 24,
        right: 24,
        left: 24,
        bottom: 10,
      ).r,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 28,
      ).r,
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(25).r,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0.1,
            blurRadius: 5,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Flexible(
            child: StudentAvatar(
              url: AppImages.onBoarding1,
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed Mohamed Hanafi',
                  softWrap: true,
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'email@gmail.com',
                  style: context.textTheme.bodySmall!.copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '1234567890',
                  style: context.textTheme.bodySmall!.copyWith(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudentAvatar extends StatelessWidget {
  final double radius;
  final String url;
  const StudentAvatar({super.key, this.radius = 80.0, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: radius.w,
      height: radius.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1.r,
        ),
      ),
    );
  }
}
