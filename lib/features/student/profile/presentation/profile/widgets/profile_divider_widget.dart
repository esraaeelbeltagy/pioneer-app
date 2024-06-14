import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileDividerWidget extends StatelessWidget {
  const ProfileDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(25).r,
      ),
    );
  }
}
