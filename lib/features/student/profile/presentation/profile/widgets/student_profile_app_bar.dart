import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pioneer_app/core/utils/app_colors.dart';
import 'package:pioneer_app/core/widgets/visuals/logo_widget.dart';

class StudentProfileAppBar extends AppBar {
  StudentProfileAppBar({
    super.key,
  }) : super(
          backgroundColor: AppColors.white,
          elevation: 6,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          title: LogoWidget(
            width: 50.w,
            height: 50.h,
          ),
          actions: [
            const _UserAvatar(),
          ],
        );
}

class _UserAvatar extends StatelessWidget {
  const _UserAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38.w,
      height: 38.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.secondaryColor,
          width: 2.r,
        ),
      ),
      child: const Center(
        child: Text('S'),
      ),
    );
  }
}
