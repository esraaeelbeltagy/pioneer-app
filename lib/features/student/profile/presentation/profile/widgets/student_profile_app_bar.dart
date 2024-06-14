import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/utils/images.dart';
import 'package:pioneer_app/core/widgets/visuals/logo_widget.dart';

class StudentProfileAppBar extends AppBar {
  StudentProfileAppBar({
    super.key,
  }) : super(
          backgroundColor: AppColors.white,
          elevation: 6,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          title: LogoWidget(
            width: 64.w,
            height: 64.h,
          ),
          actions: [
            const UserAvatar(
              url: AppImages.onBoarding1,
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
        );
}

class UserAvatar extends StatelessWidget {
  final String url;
  final double radius;
  const UserAvatar({super.key, required this.url, this.radius = 38});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius.w,
      height: radius.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.secondaryColor,
          width: 2.r,
        ),
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
