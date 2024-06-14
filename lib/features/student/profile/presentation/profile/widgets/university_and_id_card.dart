import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/extensions/theme_extension.dart';

class UniversityAndIDCard extends StatelessWidget {
  const UniversityAndIDCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        right: 48,
        left: 48,
        bottom: 8,
      ).r,
      child: DefaultTextStyle(
        style: context.textTheme.bodyMedium!.copyWith(
          fontSize: 12.sp,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8).r,
                decoration: BoxDecoration(
                  color: context.theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadiusDirectional.horizontal(
                    start: Radius.circular(25.r),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      offset: Offset(1, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('University'),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text('MMU'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8).r,
                decoration: BoxDecoration(
                  color: context.theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadiusDirectional.horizontal(
                    end: Radius.circular(25.r),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      offset: Offset(1, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('ID'),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text('3201435'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
